# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantSpeakStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantSpeakStarted)) }
      attr_reader :data

      sig do
        params(data: Telnyx::ConferenceParticipantSpeakStarted::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceParticipantSpeakStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::ConferenceParticipantSpeakStarted })
      end
      def to_hash
      end
    end
  end
end
