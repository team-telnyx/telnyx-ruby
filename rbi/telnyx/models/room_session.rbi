# typed: strong

module Telnyx
  module Models
    class RoomSession < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::RoomSession, Telnyx::Internal::AnyHash) }

      # A unique identifier for the room session.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Shows if the room session is active or not.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # ISO 8601 timestamp when the room session was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # ISO 8601 timestamp when the room session has ended.
      sig { returns(T.nilable(Time)) }
      attr_reader :ended_at

      sig { params(ended_at: Time).void }
      attr_writer :ended_at

      sig { returns(T.nilable(T::Array[Telnyx::RoomParticipant])) }
      attr_reader :participants

      sig do
        params(participants: T::Array[Telnyx::RoomParticipant::OrHash]).void
      end
      attr_writer :participants

      # Identify the room hosting that room session.
      sig { returns(T.nilable(String)) }
      attr_reader :room_id

      sig { params(room_id: String).void }
      attr_writer :room_id

      # ISO 8601 timestamp when the room session was updated.
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
          active: T::Boolean,
          created_at: Time,
          ended_at: Time,
          participants: T::Array[Telnyx::RoomParticipant::OrHash],
          record_type: String,
          room_id: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the room session.
        id: nil,
        # Shows if the room session is active or not.
        active: nil,
        # ISO 8601 timestamp when the room session was created.
        created_at: nil,
        # ISO 8601 timestamp when the room session has ended.
        ended_at: nil,
        participants: nil,
        record_type: nil,
        # Identify the room hosting that room session.
        room_id: nil,
        # ISO 8601 timestamp when the room session was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            created_at: Time,
            ended_at: Time,
            participants: T::Array[Telnyx::RoomParticipant],
            record_type: String,
            room_id: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
