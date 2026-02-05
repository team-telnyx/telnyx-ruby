# typed: strong

module Telnyx
  module Models
    class CallSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallSpeakStartedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallSpeakStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallSpeakStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallSpeakStarted::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallSpeakStarted }) }
      def to_hash
      end
    end
  end
end
