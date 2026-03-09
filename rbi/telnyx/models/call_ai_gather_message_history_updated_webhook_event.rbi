# typed: strong

module Telnyx
  module Models
    class CallAIGatherMessageHistoryUpdatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallAIGatherMessageHistoryUpdatedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallAIGatherMessageHistoryUpdated)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallAIGatherMessageHistoryUpdated::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::CallAIGatherMessageHistoryUpdated::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallAIGatherMessageHistoryUpdated })
      end
      def to_hash
      end
    end
  end
end
