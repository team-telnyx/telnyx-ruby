# typed: strong

module Telnyx
  module Models
    class PushCredentialResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PushCredentialResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::PushCredential)) }
      attr_reader :data

      sig { params(data: Telnyx::PushCredential::OrHash).void }
      attr_writer :data

      # Success response with details about a push credential
      sig do
        params(data: Telnyx::PushCredential::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::PushCredential }) }
      def to_hash
      end
    end
  end
end
