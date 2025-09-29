# typed: strong

module Telnyx
  module Models
    class OAuthRetrieveJwksResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthRetrieveJwksResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::OAuthRetrieveJwksResponse::Key])
        )
      end
      attr_reader :keys

      sig do
        params(
          keys: T::Array[Telnyx::Models::OAuthRetrieveJwksResponse::Key::OrHash]
        ).void
      end
      attr_writer :keys

      sig do
        params(
          keys: T::Array[Telnyx::Models::OAuthRetrieveJwksResponse::Key::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(keys: nil)
      end

      sig do
        override.returns(
          { keys: T::Array[Telnyx::Models::OAuthRetrieveJwksResponse::Key] }
        )
      end
      def to_hash
      end

      class Key < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthRetrieveJwksResponse::Key,
              Telnyx::Internal::AnyHash
            )
          end

        # Algorithm
        sig { returns(T.nilable(String)) }
        attr_reader :alg

        sig { params(alg: String).void }
        attr_writer :alg

        # Key ID
        sig { returns(T.nilable(String)) }
        attr_reader :kid

        sig { params(kid: String).void }
        attr_writer :kid

        # Key type
        sig { returns(T.nilable(String)) }
        attr_reader :kty

        sig { params(kty: String).void }
        attr_writer :kty

        # Key use
        sig { returns(T.nilable(String)) }
        attr_reader :use

        sig { params(use: String).void }
        attr_writer :use

        sig do
          params(alg: String, kid: String, kty: String, use: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Algorithm
          alg: nil,
          # Key ID
          kid: nil,
          # Key type
          kty: nil,
          # Key use
          use: nil
        )
        end

        sig do
          override.returns(
            { alg: String, kid: String, kty: String, use: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
