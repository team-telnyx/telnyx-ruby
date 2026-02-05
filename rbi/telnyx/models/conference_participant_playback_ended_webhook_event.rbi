# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantPlaybackEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantPlaybackEnded)) }
      attr_reader :data

      sig do
        params(data: Telnyx::ConferenceParticipantPlaybackEnded::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::ConferenceParticipantPlaybackEnded::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::ConferenceParticipantPlaybackEnded })
      end
      def to_hash
      end
    end
  end
end
