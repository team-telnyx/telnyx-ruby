# typed: strong

module Telnyx
  module Models
    class CallConversationEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallConversationEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallConversationEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallConversationEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallConversationEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallConversationEnded }) }
      def to_hash
      end
    end
  end
end
