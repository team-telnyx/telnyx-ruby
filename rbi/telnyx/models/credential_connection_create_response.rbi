# typed: strong

module Telnyx
  module Models
    class CredentialConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CredentialConnectionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CredentialConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::CredentialConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CredentialConnection::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CredentialConnection }) }
      def to_hash
      end
    end
  end
end
