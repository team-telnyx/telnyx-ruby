# typed: strong

module Telnyx
  module Models
    class RoomParticipant < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomParticipant, Telnyx::Internal::AnyHash)
        end

      # A unique identifier for the room participant.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Context provided to the given participant through the client SDK
      sig { returns(T.nilable(String)) }
      attr_reader :context

      sig { params(context: String).void }
      attr_writer :context

      # ISO 8601 timestamp when the participant joined the session.
      sig { returns(T.nilable(Time)) }
      attr_reader :joined_at

      sig { params(joined_at: Time).void }
      attr_writer :joined_at

      # ISO 8601 timestamp when the participant left the session.
      sig { returns(T.nilable(Time)) }
      attr_reader :left_at

      sig { params(left_at: Time).void }
      attr_writer :left_at

      # Identify the room session that participant is part of.
      sig { returns(T.nilable(String)) }
      attr_reader :session_id

      sig { params(session_id: String).void }
      attr_writer :session_id

      # ISO 8601 timestamp when the participant was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          id: String,
          context: String,
          joined_at: Time,
          left_at: Time,
          record_type: String,
          session_id: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the room participant.
        id: nil,
        # Context provided to the given participant through the client SDK
        context: nil,
        # ISO 8601 timestamp when the participant joined the session.
        joined_at: nil,
        # ISO 8601 timestamp when the participant left the session.
        left_at: nil,
        record_type: nil,
        # Identify the room session that participant is part of.
        session_id: nil,
        # ISO 8601 timestamp when the participant was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            context: String,
            joined_at: Time,
            left_at: Time,
            record_type: String,
            session_id: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
