# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantSpeakEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantSpeakEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceParticipantSpeakEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceParticipantSpeakEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::ConferenceParticipantSpeakEnded })
      end
      def to_hash
      end
    end
  end
end
