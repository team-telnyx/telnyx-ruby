# typed: strong

module Telnyx
  module Models
    class CallSiprecStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallSiprecStoppedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallSiprecStopped)) }
      attr_reader :data

      sig { params(data: Telnyx::CallSiprecStopped::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallSiprecStopped::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallSiprecStopped }) }
      def to_hash
      end
    end
  end
end
