# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantPlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantPlaybackStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantPlaybackStarted)) }
      attr_reader :data

      sig do
        params(data: Telnyx::ConferenceParticipantPlaybackStarted::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::ConferenceParticipantPlaybackStarted::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::ConferenceParticipantPlaybackStarted })
      end
      def to_hash
      end
    end
  end
end
