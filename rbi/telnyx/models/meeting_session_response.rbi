# typed: strong

module Telnyx
  module Models
    class MeetingSessionResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionResponse, Telnyx::Internal::AnyHash)
        end

      # Represents a meeting session. All serializer fields are present and required;
      # nullable fields use null when absent. No actor, provider-bot, idempotency,
      # routing, key, or internal fields are exposed.
      sig { returns(Telnyx::MeetingSession) }
      attr_reader :data

      sig { params(data: Telnyx::MeetingSession::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MeetingSession::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Represents a meeting session. All serializer fields are present and required;
        # nullable fields use null when absent. No actor, provider-bot, idempotency,
        # routing, key, or internal fields are exposed.
        data:
      )
      end

      sig { override.returns({ data: Telnyx::MeetingSession }) }
      def to_hash
      end
    end
  end
end
