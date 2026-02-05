# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantJoinedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantJoinedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantJoined)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceParticipantJoined::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceParticipantJoined::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceParticipantJoined }) }
      def to_hash
      end
    end
  end
end
