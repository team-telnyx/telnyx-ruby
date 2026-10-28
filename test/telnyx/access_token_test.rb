# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class AccessTokenTest < Test::Unit::TestCase
    SECRET = Base64.urlsafe_encode64(OpenSSL::Random.random_bytes(32), padding: false)
    MATERIAL = {
      kid: "v1",
      tel_token: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      signing_secret: SECRET,
    }.freeze

    def token(**overrides)
      AccessToken.new(
        **{
          credential_id: "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31",
          user_id: "191d61ea-1cb5-445a-8dd1-384f45e7cb7a",
          identity: "gencred1234",
          expires_at: "2027-01-01T00:00:00Z",
          token_material: MATERIAL,
        }.merge(overrides)
      )
    end

    should "mint a three part HS256 JWT with the Telnyx content type" do
      jwt = token.to_jwt
      head, body, sig = jwt.split(".")
      assert_equal 3, jwt.split(".").size
      assert_nil jwt[%r{[+/=]}], "token must be base64url without padding"

      header = JSON.parse(Base64.urlsafe_decode64(head))
      assert_equal({ "alg" => "HS256", "typ" => "JWT", "cty" => "telnyx-webrtc;v=1", "kid" => "v1" }, header)

      expected = OpenSSL::HMAC.digest("SHA256", Base64.urlsafe_decode64(SECRET), "#{head}.#{body}")
      assert_equal Base64.urlsafe_encode64(expected, padding: false), sig
    end

    should "carry the credential and the tel_token in the claims" do
      now = Time.at(1_760_000_000)
      claims = AccessToken.decode(token.to_jwt(now: now), signing_secret: SECRET)

      assert_equal "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31", claims["sub"]
      assert_equal "191d61ea-1cb5-445a-8dd1-384f45e7cb7a", claims["user_id"]
      assert_equal "gencred1234", claims["identity"]
      assert_equal "2027-01-01T00:00:00Z", claims["cred_exp"]
      assert_equal MATERIAL[:tel_token], claims["tel_token"]
      assert_equal now.to_i, claims["iat"]
      assert_equal now.to_i, claims["nbf"]
      assert_equal now.to_i + 3600, claims["exp"]
      assert_equal "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31-#{now.to_i}", claims["jti"]
      assert_kind_of Integer, claims["exp"]
    end

    should "default to one hour and cap the ttl at 24 hours" do
      now = Time.at(1_760_000_000)
      assert_equal now.to_i + 3600, AccessToken.decode(token.to_jwt(now: now), signing_secret: SECRET)["exp"]
      assert_equal now.to_i + 600, AccessToken.decode(token(ttl: 600).to_jwt(now: now), signing_secret: SECRET)["exp"]
      assert_equal now.to_i + 86_400, AccessToken.decode(token(ttl: 10**6).to_jwt(now: now), signing_secret: SECRET)["exp"]
      assert_equal now.to_i + 1, AccessToken.decode(token(ttl: 0).to_jwt(now: now), signing_secret: SECRET)["exp"]
    end

    should "accept token_material with string keys or as a TelnyxObject" do
      strings = MATERIAL.transform_keys(&:to_s)
      object = TelnyxObject.construct_from(MATERIAL)
      a = token(token_material: strings).to_jwt(now: Time.at(0))
      b = token(token_material: object).to_jwt(now: Time.at(0))
      assert_equal a, b
    end

    should "refuse to mint without the material or the identity" do
      assert_raise(ArgumentError) { token(token_material: nil) }
      assert_raise(ArgumentError) { token(token_material: MATERIAL.reject { |k, _| k == :signing_secret }) }
      assert_raise(ArgumentError) { token(token_material: MATERIAL.merge(tel_token: "")) }
      assert_raise(ArgumentError) { token(identity: nil) }
      assert_raise(ArgumentError) { token(user_id: "") }
    end

    should "decode rejects a token signed with another secret" do
      other = Base64.urlsafe_encode64(OpenSSL::Random.random_bytes(32), padding: false)
      jwt = token.to_jwt
      assert_raise(SignatureVerificationError) { AccessToken.decode(jwt, signing_secret: other) }

      tampered = jwt.sub(/\.[^.]+\./, ".#{Base64.urlsafe_encode64('{"sub":"x"}', padding: false)}.")
      assert_raise(SignatureVerificationError) { AccessToken.decode(tampered, signing_secret: SECRET) }
    end
  end
end
