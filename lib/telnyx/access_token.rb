# frozen_string_literal: true

require "base64"
require "json"
require "openssl"

module Telnyx
  # Mints a WebRTC login token for a telephony credential locally, with no
  # request to Telnyx.
  #
  # The token has the same shape as the one `POST /v2/telephony_credentials/:id/token`
  # returns, so it is used the same way: pass it to the WebRTC SDK as
  # `login_token`. Telnyx verifies it on login.
  #
  # The signing material comes from the credential: `token_material` is in the
  # response of `POST /v2/telephony_credentials` and of
  # `GET /v2/telephony_credentials/:id/token_material`. It is as sensitive as
  # the SIP password, so keep it on the server; never ship it to a browser.
  #
  #   credential = Telnyx::TelephonyCredential.create(connection_id: "123")
  #   credential.to_jwt                   # 1 hour
  #   credential.to_jwt(ttl: 600)         # 10 minutes
  #
  # Or from stored values, without a TelephonyCredential object:
  #
  #   Telnyx::AccessToken.new(
  #     credential_id: "...", user_id: "...", identity: "gencred...",
  #     expires_at: "2027-01-01T00:00:00Z",
  #     token_material: { kid: "v1", tel_token: "...", signing_secret: "..." }
  #   ).to_jwt
  class AccessToken
    DEFAULT_TTL = 3600
    MAX_TTL = 86_400
    CONTENT_TYPE = "telnyx-webrtc;v=1"
    ALGORITHM = "HS256"

    MATERIAL_FIELDS = %i[kid tel_token signing_secret].freeze

    attr_reader :credential_id, :user_id, :identity, :expires_at, :ttl

    # @param credential_id [String] the telephony credential `id`
    # @param user_id [String] the credential's `user_id`
    # @param identity [String] the credential's `sip_username`
    # @param expires_at [String, nil] the credential's `expires_at`, as the API returns it
    # @param token_material [Hash, TelnyxObject] `kid`, `tel_token`, `signing_secret`
    # @param ttl [Integer] token lifetime in seconds, 1..86400; default one hour
    def initialize(credential_id:, user_id:, identity:, token_material:, expires_at: nil, ttl: DEFAULT_TTL)
      @credential_id = required(credential_id, "credential_id")
      @user_id = required(user_id, "user_id")
      @identity = required(identity, "identity")
      @expires_at = expires_at
      @material = normalize_material(token_material)
      @ttl = ttl.to_i.clamp(1, MAX_TTL)
    end

    # The signed token, valid from now for `ttl` seconds.
    def to_jwt(now: Time.now)
      iat = now.to_i
      header = {
        alg: ALGORITHM,
        typ: "JWT",
        cty: CONTENT_TYPE,
        kid: @material[:kid],
      }
      payload = {
        sub: credential_id,
        user_id: user_id,
        identity: identity,
        cred_exp: expires_at,
        tel_token: @material[:tel_token],
        iat: iat,
        nbf: iat,
        exp: iat + ttl,
        jti: "#{credential_id}-#{iat}",
      }

      signing_input = "#{encode(JSON.generate(header))}.#{encode(JSON.generate(payload))}"
      "#{signing_input}.#{encode(self.class.sign(signing_input, @material[:signing_secret]))}"
    end

    alias to_s to_jwt

    # Decodes a token minted by this class and checks its signature against
    # `signing_secret`. Returns the claims as a Hash with string keys. Meant for
    # tests and debugging: Telnyx does the real verification on login.
    def self.decode(jwt, signing_secret:)
      head, body, sig = jwt.to_s.split(".")
      raise ArgumentError, "not a JWT" if sig.nil?

      expected = sign("#{head}.#{body}", signing_secret)
      given = Base64.urlsafe_decode64(sig)
      valid = given.bytesize == expected.bytesize && OpenSSL.fixed_length_secure_compare(given, expected)
      raise SignatureVerificationError.new("Signature is invalid and does not match the payload", sig) unless valid

      JSON.parse(Base64.urlsafe_decode64(body))
    end

    def self.sign(signing_input, signing_secret)
      key = Base64.urlsafe_decode64(signing_secret)
      OpenSSL::HMAC.digest("SHA256", key, signing_input)
    end

    private

    def encode(bytes)
      Base64.urlsafe_encode64(bytes, padding: false)
    end

    def required(value, name)
      raise ArgumentError, "#{name} is required to mint a token" if value.nil? || value.to_s.empty?

      value.to_s
    end

    def normalize_material(material)
      hash = material.respond_to?(:to_hash) ? material.to_hash : material
      raise ArgumentError, "token_material is required to mint a token" unless hash.is_a?(Hash)

      MATERIAL_FIELDS.each_with_object({}) do |field, acc|
        value = hash[field] || hash[field.to_s]
        raise ArgumentError, "token_material.#{field} is missing" if value.nil? || value.to_s.empty?

        acc[field] = value.to_s
      end
    end
  end
end
