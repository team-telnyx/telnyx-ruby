# typed: strong

module Telnyx
  module Models
    class OAuthIntrospectResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthIntrospectResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Whether the token is active
      sig { returns(T::Boolean) }
      attr_accessor :active

      # Audience
      sig { returns(T.nilable(String)) }
      attr_reader :aud

      sig { params(aud: String).void }
      attr_writer :aud

      # Client identifier
      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      # Expiration timestamp
      sig { returns(T.nilable(Integer)) }
      attr_reader :exp

      sig { params(exp: Integer).void }
      attr_writer :exp

      # Issued at timestamp
      sig { returns(T.nilable(Integer)) }
      attr_reader :iat

      sig { params(iat: Integer).void }
      attr_writer :iat

      # Issuer
      sig { returns(T.nilable(String)) }
      attr_reader :iss

      sig { params(iss: String).void }
      attr_writer :iss

      # Space-separated list of scopes
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      sig do
        params(
          active: T::Boolean,
          aud: String,
          client_id: String,
          exp: Integer,
          iat: Integer,
          iss: String,
          scope: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the token is active
        active:,
        # Audience
        aud: nil,
        # Client identifier
        client_id: nil,
        # Expiration timestamp
        exp: nil,
        # Issued at timestamp
        iat: nil,
        # Issuer
        iss: nil,
        # Space-separated list of scopes
        scope: nil
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            aud: String,
            client_id: String,
            exp: Integer,
            iat: Integer,
            iss: String,
            scope: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
