# typed: strong

module Telnyx
  module Models
    class CallSiprecStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallSiprecStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallSiprecStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallSiprecStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallSiprecStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallSiprecStarted }) }
      def to_hash
      end
    end
  end
end
