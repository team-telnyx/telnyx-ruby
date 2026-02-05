# typed: strong

module Telnyx
  module Models
    class CallInitiatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallInitiatedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallInitiated)) }
      attr_reader :data

      sig { params(data: Telnyx::CallInitiated::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallInitiated::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallInitiated }) }
      def to_hash
      end
    end
  end
end
