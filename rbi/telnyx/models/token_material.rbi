# typed: strong

module Telnyx
  module Models
    class TokenMaterial < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::TokenMaterial, Telnyx::Internal::AnyHash) }

      # Identifies the Telnyx signing key the `signing_secret` was derived with. Goes in
      # the token header.
      sig { returns(T.nilable(String)) }
      attr_reader :kid

      sig { params(kid: String).void }
      attr_writer :kid

      # The HMAC-SHA256 key the token is signed with, base64url without padding.
      sig { returns(T.nilable(String)) }
      attr_reader :signing_secret

      sig { params(signing_secret: String).void }
      attr_writer :signing_secret

      # Opaque value Telnyx uses to resolve the credential. Carried in the token's
      # `tel_token` claim as is.
      sig { returns(T.nilable(String)) }
      attr_reader :tel_token

      sig { params(tel_token: String).void }
      attr_writer :tel_token

      # What a server needs to mint login tokens for the credential itself, with no
      # request per token (`TelephonyCredential#to_jwt` in telnyx-ruby 3.1.0 or later).
      # As sensitive as `sip_password`: keep it on the server.
      sig do
        params(kid: String, signing_secret: String, tel_token: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Identifies the Telnyx signing key the `signing_secret` was derived with. Goes in
        # the token header.
        kid: nil,
        # The HMAC-SHA256 key the token is signed with, base64url without padding.
        signing_secret: nil,
        # Opaque value Telnyx uses to resolve the credential. Carried in the token's
        # `tel_token` claim as is.
        tel_token: nil
      )
      end

      sig do
        override.returns(
          { kid: String, signing_secret: String, tel_token: String }
        )
      end
      def to_hash
      end
    end
  end
end
