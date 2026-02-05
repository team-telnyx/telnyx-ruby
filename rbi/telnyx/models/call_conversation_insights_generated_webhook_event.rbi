# typed: strong

module Telnyx
  module Models
    class CallConversationInsightsGeneratedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationInsightsGeneratedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallConversationInsightsGenerated)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallConversationInsightsGenerated::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::CallConversationInsightsGenerated::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallConversationInsightsGenerated })
      end
      def to_hash
      end
    end
  end
end
