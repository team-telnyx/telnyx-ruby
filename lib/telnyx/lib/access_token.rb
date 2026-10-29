# frozen_string_literal: true

require "base64"
require "json"
require "openssl"

module Telnyx
  module Lib
    # Mints a WebRTC login token for a telephony credential locally, with no
    # request to Telnyx.
    #
    # The token has the same shape as the one `POST /v2/telephony_credentials/:id/token`
    # (`client.telephony_credentials.create_token`) returns, so it is used the
    # same way: pass it to the WebRTC SDK as `login_token`. Telnyx verifies it
    # on login.
    #
    # The signing material comes from the credential: `token_material` is in the
    # response of `POST /v2/telephony_credentials` and of
    # `GET /v2/telephony_credentials/:id/token_material`. It is as sensitive as
    # the SIP password, so keep it on the server; never ship it to a browser.
    #
    #   credential = client.telephony_credentials.create(connection_id: "123")
    #   client.telephony_credentials.to_jwt(credential)            # 1 hour
    #   client.telephony_credentials.to_jwt(credential, ttl: 600)  # 10 minutes
    #
    # Or from stored values, with no client at all:
    #
    #   Telnyx::Lib::AccessToken.new(
    #     credential_id: "...", user_id: "...", identity: "gencred...",
    #     expires_at: "2027-01-01T00:00:00Z",
    #     token_material: {kid: "v1", tel_token: "...", signing_secret: "..."}
    #   ).to_jwt
    class AccessToken
      DEFAULT_TTL = 3600
      MAX_TTL = 86_400
      CONTENT_TYPE = "telnyx-webrtc;v=1"
      ALGORITHM = "HS256"
      MATERIAL_FIELDS = [:kid, :tel_token, :signing_secret].freeze

      # Raised by {AccessToken.decode} when the signature does not match.
      class SignatureError < StandardError
      end

      attr_reader :credential_id, :user_id, :identity, :expires_at, :ttl

      # @param credential_id [String] the telephony credential `id`
      # @param user_id [String] the credential's `user_id`
      # @param identity [String] the credential's `sip_username`
      # @param token_material [Hash, Telnyx::Internal::Type::BaseModel] `kid`, `tel_token`, `signing_secret`
      # @param expires_at [String, nil] the credential's `expires_at`, as the API returns it
      # @param ttl [Integer] token lifetime in seconds, 1..86400; default one hour
      def initialize(credential_id:, user_id:, identity:, token_material:, expires_at: nil, ttl: DEFAULT_TTL)
        @credential_id = required(credential_id, "credential_id")
        @user_id = required(user_id, "user_id")
        @identity = required(identity, "identity")
        @expires_at = expires_at
        @material = normalize_material(token_material)
        @ttl = Integer(ttl).clamp(1, MAX_TTL)
      end

      # The signed token, valid from `now` for `ttl` seconds.
      #
      # @param now [Time]
      #
      # @return [String]
      def to_jwt(now: Time.now)
        iat = now.to_i
        header = {alg: ALGORITHM, typ: "JWT", cty: CONTENT_TYPE, kid: @material.fetch(:kid)}
        payload = {
          sub: credential_id,
          user_id: user_id,
          identity: identity,
          cred_exp: expires_at,
          tel_token: @material.fetch(:tel_token),
          iat: iat,
          nbf: iat,
          exp: iat + ttl,
          jti: "#{credential_id}-#{iat}"
        }

        signing_input = "#{encode(JSON.generate(header))}.#{encode(JSON.generate(payload))}"
        "#{signing_input}.#{encode(self.class.sign(signing_input, @material.fetch(:signing_secret)))}"
      end

      alias_method :to_s, :to_jwt

      class << self
        # Decodes a token minted by this class and checks its signature against
        # `signing_secret`. Meant for tests and debugging: Telnyx does the real
        # verification on login.
        #
        # @param jwt [String]
        # @param signing_secret [String] base64url, as in `token_material`
        #
        # @raise [Telnyx::Lib::AccessToken::SignatureError] if the signature does not match
        # @return [Hash{String=>Object}] the claims
        def decode(jwt, signing_secret:)
          head, body, sig = jwt.to_s.split(".")
          raise ArgumentError.new("not a JWT") if sig.nil?

          expected = sign("#{head}.#{body}", signing_secret)
          given = Base64.urlsafe_decode64(sig)
          valid = given.bytesize == expected.bytesize && OpenSSL.fixed_length_secure_compare(given, expected)
          raise SignatureError.new("signature does not match the payload") unless valid

          JSON.parse(Base64.urlsafe_decode64(body))
        end

        # @param signing_input [String]
        # @param signing_secret [String] base64url
        #
        # @return [String] raw HMAC-SHA256 bytes
        def sign(signing_input, signing_secret)
          OpenSSL::HMAC.digest("SHA256", Base64.urlsafe_decode64(signing_secret), signing_input)
        end
      end

      private

      def encode(bytes) = Base64.urlsafe_encode64(bytes, padding: false)

      def required(value, name)
        raise ArgumentError.new("#{name} is required to mint a token") if value.nil? || value.to_s.empty?

        value.to_s
      end

      def normalize_material(material)
        hash = material.respond_to?(:to_hash) ? material.to_hash : material
        raise ArgumentError.new("token_material is required to mint a token") unless hash.is_a?(Hash)

        MATERIAL_FIELDS.to_h do |field|
          value = hash[field] || hash[field.to_s]
          raise ArgumentError.new("token_material.#{field} is missing") if value.nil? || value.to_s.empty?

          [field, value.to_s]
        end
      end
    end
  end
end
