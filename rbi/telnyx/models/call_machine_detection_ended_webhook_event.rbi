# typed: strong

module Telnyx
  module Models
    class CallMachineDetectionEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallMachineDetectionEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallMachineDetectionEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallMachineDetectionEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallMachineDetectionEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallMachineDetectionEnded }) }
      def to_hash
      end
    end
  end
end
