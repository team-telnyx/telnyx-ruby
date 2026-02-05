# typed: strong

module Telnyx
  module Models
    class CallMachineGreetingEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallMachineGreetingEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallMachineGreetingEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallMachineGreetingEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallMachineGreetingEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallMachineGreetingEnded }) }
      def to_hash
      end
    end
  end
end
