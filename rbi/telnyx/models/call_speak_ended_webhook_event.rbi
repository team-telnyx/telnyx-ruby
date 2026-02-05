# typed: strong

module Telnyx
  module Models
    class CallSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallSpeakEndedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallSpeakEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallSpeakEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallSpeakEnded::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallSpeakEnded }) }
      def to_hash
      end
    end
  end
end
