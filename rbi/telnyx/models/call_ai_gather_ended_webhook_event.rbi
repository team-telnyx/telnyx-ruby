# typed: strong

module Telnyx
  module Models
    class CallAIGatherEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallAIGatherEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallAIGatherEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallAIGatherEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallAIGatherEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallAIGatherEnded }) }
      def to_hash
      end
    end
  end
end
