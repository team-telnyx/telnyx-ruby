# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Lib::AccessTokenTest < Minitest::Test
  SECRET = Base64.urlsafe_encode64(OpenSSL::Random.random_bytes(32), padding: false)
  MATERIAL = {kid: "v1", tel_token: "A" * 64, signing_secret: SECRET}.freeze
  CREDENTIAL_ID = "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31"
  USER_ID = "191d61ea-1cb5-445a-8dd1-384f45e7cb7a"
  NOW = Time.at(1_760_000_000)

  def token(**overrides)
    Telnyx::Lib::AccessToken.new(
      credential_id: CREDENTIAL_ID,
      user_id: USER_ID,
      identity: "gencred1234",
      expires_at: "2027-01-01T00:00:00Z",
      token_material: MATERIAL,
      **overrides
    )
  end

  def decode(jwt) = Telnyx::Lib::AccessToken.decode(jwt, signing_secret: SECRET)

  def test_mints_a_three_part_hs256_jwt_with_the_telnyx_content_type
    jwt = token.to_jwt
    head, body, sig = jwt.split(".")

    assert_equal(3, jwt.split(".").size)
    assert_nil(jwt[%r{[+/=]}], "token must be base64url without padding")

    header = JSON.parse(Base64.urlsafe_decode64(head))
    assert_equal({"alg" => "HS256", "typ" => "JWT", "cty" => "telnyx-webrtc;v=1", "kid" => "v1"}, header)

    expected = OpenSSL::HMAC.digest("SHA256", Base64.urlsafe_decode64(SECRET), "#{head}.#{body}")
    assert_equal(Base64.urlsafe_encode64(expected, padding: false), sig)
  end

  def test_carries_the_credential_and_the_tel_token_in_the_claims
    claims = decode(token.to_jwt(now: NOW))

    assert_equal(CREDENTIAL_ID, claims["sub"])
    assert_equal(USER_ID, claims["user_id"])
    assert_equal("gencred1234", claims["identity"])
    assert_equal("2027-01-01T00:00:00Z", claims["cred_exp"])
    assert_equal(MATERIAL[:tel_token], claims["tel_token"])
    assert_equal(NOW.to_i, claims["iat"])
    assert_equal(NOW.to_i, claims["nbf"])
    assert_equal(NOW.to_i + 3600, claims["exp"])
    assert_equal("#{CREDENTIAL_ID}-#{NOW.to_i}", claims["jti"])
  end

  def test_defaults_to_one_hour_and_caps_the_ttl_at_24_hours
    assert_equal(NOW.to_i + 3600, decode(token.to_jwt(now: NOW))["exp"])
    assert_equal(NOW.to_i + 600, decode(token(ttl: 600).to_jwt(now: NOW))["exp"])
    assert_equal(NOW.to_i + 86_400, decode(token(ttl: 10**6).to_jwt(now: NOW))["exp"])
    assert_equal(NOW.to_i + 1, decode(token(ttl: 0).to_jwt(now: NOW))["exp"])
  end

  def test_rejects_a_ttl_that_is_not_a_number
    assert_raises(ArgumentError) { token(ttl: "soon") }
    assert_raises(TypeError) { token(ttl: nil) }
  end

  def test_accepts_token_material_with_string_keys_or_as_a_model
    strings = MATERIAL.transform_keys(&:to_s)
    model = Telnyx::Internal::Type::BaseModel.new(MATERIAL)

    a = token(token_material: strings).to_jwt(now: NOW)
    b = token(token_material: model).to_jwt(now: NOW)

    assert_equal(a, b)
    assert_equal(MATERIAL[:tel_token], decode(a)["tel_token"])
  end

  def test_refuses_to_mint_without_the_material_or_the_identity
    assert_raises(ArgumentError) { token(token_material: nil) }
    assert_raises(ArgumentError) { token(token_material: MATERIAL.except(:signing_secret)) }
    assert_raises(ArgumentError) { token(token_material: MATERIAL.merge(tel_token: "")) }
    assert_raises(ArgumentError) { token(identity: nil) }
    assert_raises(ArgumentError) { token(user_id: "") }
  end

  def test_decode_rejects_a_token_signed_with_another_secret
    other = Base64.urlsafe_encode64(OpenSSL::Random.random_bytes(32), padding: false)
    jwt = token.to_jwt

    assert_raises(Telnyx::Lib::AccessToken::SignatureError) do
      Telnyx::Lib::AccessToken.decode(jwt, signing_secret: other)
    end

    tampered = jwt.sub(/\.[^.]+\./, ".#{Base64.urlsafe_encode64('{"sub":"x"}', padding: false)}.")
    assert_raises(Telnyx::Lib::AccessToken::SignatureError) { decode(tampered) }
    assert_raises(ArgumentError) { decode("not-a-jwt") }
  end
end
