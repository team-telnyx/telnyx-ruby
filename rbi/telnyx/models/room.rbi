# typed: strong

module Telnyx
  module Models
    class Room < Telnyx::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Telnyx::Room, Telnyx::Internal::AnyHash) }

      # A unique identifier for the room.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The identifier of the active room session if any.
      sig { returns(T.nilable(String)) }
      attr_reader :active_session_id

      sig { params(active_session_id: String).void }
      attr_writer :active_session_id

      # ISO 8601 timestamp when the room was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Enable or disable recording for that room.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_recording

      sig { params(enable_recording: T::Boolean).void }
      attr_writer :enable_recording

      # Maximum participants allowed in the room.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_participants

      sig { params(max_participants: Integer).void }
      attr_writer :max_participants

      sig { returns(T.nilable(T::Array[Telnyx::RoomSession])) }
      attr_reader :sessions

      sig { params(sessions: T::Array[Telnyx::RoomSession::OrHash]).void }
      attr_writer :sessions

      # The unique (within the Telnyx account scope) name of the room.
      sig { returns(T.nilable(String)) }
      attr_reader :unique_name

      sig { params(unique_name: String).void }
      attr_writer :unique_name

      # ISO 8601 timestamp when the room was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # The failover URL where webhooks related to this room will be sent if sending to
      # the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this room will be sent. Must include a scheme,
      # such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          id: String,
          active_session_id: String,
          created_at: Time,
          enable_recording: T::Boolean,
          max_participants: Integer,
          record_type: String,
          sessions: T::Array[Telnyx::RoomSession::OrHash],
          unique_name: String,
          updated_at: Time,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the room.
        id: nil,
        # The identifier of the active room session if any.
        active_session_id: nil,
        # ISO 8601 timestamp when the room was created.
        created_at: nil,
        # Enable or disable recording for that room.
        enable_recording: nil,
        # Maximum participants allowed in the room.
        max_participants: nil,
        record_type: nil,
        sessions: nil,
        # The unique (within the Telnyx account scope) name of the room.
        unique_name: nil,
        # ISO 8601 timestamp when the room was updated.
        updated_at: nil,
        # The failover URL where webhooks related to this room will be sent if sending to
        # the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room will be sent. Must include a scheme,
        # such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active_session_id: String,
            created_at: Time,
            enable_recording: T::Boolean,
            max_participants: Integer,
            record_type: String,
            sessions: T::Array[Telnyx::RoomSession],
            unique_name: String,
            updated_at: Time,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
