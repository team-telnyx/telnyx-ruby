# typed: strong

module Telnyx
  module Lib
    class AccessToken
      DEFAULT_TTL = T.let(3600, Integer)
      MAX_TTL = T.let(86_400, Integer)
      CONTENT_TYPE = T.let("telnyx-webrtc;v=1", String)
      ALGORITHM = T.let("HS256", String)
      MATERIAL_FIELDS = T.let([:kid, :tel_token, :signing_secret].freeze, T::Array[Symbol])

      class SignatureError < StandardError
      end

      sig { returns(String) }
      attr_reader :credential_id

      sig { returns(String) }
      attr_reader :user_id

      sig { returns(String) }
      attr_reader :identity

      sig { returns(T.nilable(String)) }
      attr_reader :expires_at

      sig { returns(Integer) }
      attr_reader :ttl

      sig do
        params(
          credential_id: String,
          user_id: String,
          identity: String,
          token_material: T.any(T::Hash[T.any(Symbol, String), T.untyped], Telnyx::Internal::Type::BaseModel),
          expires_at: T.nilable(String),
          ttl: Integer
        ).void
      end
      def initialize(
        # the telephony credential `id`
        credential_id:,
        # the credential's `user_id`
        user_id:,
        # the credential's `sip_username`
        identity:,
        # `kid`, `tel_token`, `signing_secret`
        token_material:,
        # the credential's `expires_at`, as the API returns it
        expires_at: nil,
        # token lifetime in seconds, 1..86400; default one hour
        ttl: DEFAULT_TTL
      )
      end

      sig { params(now: Time).returns(String) }
      def to_jwt(now: Time.now)
      end

      sig { returns(String) }
      def to_s
      end

      sig { params(jwt: String, signing_secret: String).returns(T::Hash[String, T.untyped]) }
      def self.decode(jwt, signing_secret:)
      end

      sig { params(signing_input: String, signing_secret: String).returns(String) }
      def self.sign(signing_input, signing_secret)
      end
    end
  end
end
