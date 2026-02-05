# typed: strong

module Telnyx
  module Models
    class CallMachinePremiumDetectionEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallMachinePremiumDetectionEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallMachinePremiumDetectionEnded)) }
      attr_reader :data

      sig do
        params(data: Telnyx::CallMachinePremiumDetectionEnded::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::CallMachinePremiumDetectionEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallMachinePremiumDetectionEnded })
      end
      def to_hash
      end
    end
  end
end
