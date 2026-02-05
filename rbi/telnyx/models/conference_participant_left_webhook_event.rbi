# typed: strong

module Telnyx
  module Models
    class ConferenceParticipantLeftWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceParticipantLeftWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipantLeft)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceParticipantLeft::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceParticipantLeft::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceParticipantLeft }) }
      def to_hash
      end
    end
  end
end
