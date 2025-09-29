# typed: strong

module Telnyx
  module Models
    class AuthenticationProviderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AuthenticationProviderRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::AuthenticationProvider)) }
      attr_reader :data

      sig { params(data: Telnyx::AuthenticationProvider::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::AuthenticationProvider::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::AuthenticationProvider }) }
      def to_hash
      end
    end
  end
end
