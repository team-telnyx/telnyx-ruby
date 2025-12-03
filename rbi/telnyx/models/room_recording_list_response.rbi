# typed: strong

module Telnyx
  module Models
    class RoomRecordingListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RoomRecordingListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A unique identifier for the room recording.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Shows the codec used for the room recording.
      sig { returns(T.nilable(String)) }
      attr_reader :codec

      sig { params(codec: String).void }
      attr_writer :codec

      # ISO 8601 timestamp when the room recording has completed.
      sig { returns(T.nilable(Time)) }
      attr_reader :completed_at

      sig { params(completed_at: Time).void }
      attr_writer :completed_at

      # ISO 8601 timestamp when the room recording was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Url to download the recording.
      sig { returns(T.nilable(String)) }
      attr_reader :download_url

      sig { params(download_url: String).void }
      attr_writer :download_url

      # Shows the room recording duration in seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_secs

      sig { params(duration_secs: Integer).void }
      attr_writer :duration_secs

      # ISO 8601 timestamp when the room recording has ended.
      sig { returns(T.nilable(Time)) }
      attr_reader :ended_at

      sig { params(ended_at: Time).void }
      attr_writer :ended_at

      # Identify the room participant associated with the room recording.
      sig { returns(T.nilable(String)) }
      attr_reader :participant_id

      sig { params(participant_id: String).void }
      attr_writer :participant_id

      # Identify the room associated with the room recording.
      sig { returns(T.nilable(String)) }
      attr_reader :room_id

      sig { params(room_id: String).void }
      attr_writer :room_id

      # Identify the room session associated with the room recording.
      sig { returns(T.nilable(String)) }
      attr_reader :session_id

      sig { params(session_id: String).void }
      attr_writer :session_id

      # Shows the room recording size in MB.
      sig { returns(T.nilable(Float)) }
      attr_reader :size_mb

      sig { params(size_mb: Float).void }
      attr_writer :size_mb

      # ISO 8601 timestamp when the room recording has stated.
      sig { returns(T.nilable(Time)) }
      attr_reader :started_at

      sig { params(started_at: Time).void }
      attr_writer :started_at

      # Shows the room recording status.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::RoomRecordingListResponse::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::Models::RoomRecordingListResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Shows the room recording type.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::RoomRecordingListResponse::Type::TaggedSymbol
          )
        )
      end
      attr_reader :type

      sig do
        params(
          type: Telnyx::Models::RoomRecordingListResponse::Type::OrSymbol
        ).void
      end
      attr_writer :type

      # ISO 8601 timestamp when the room recording was updated.
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
          codec: String,
          completed_at: Time,
          created_at: Time,
          download_url: String,
          duration_secs: Integer,
          ended_at: Time,
          participant_id: String,
          record_type: String,
          room_id: String,
          session_id: String,
          size_mb: Float,
          started_at: Time,
          status: Telnyx::Models::RoomRecordingListResponse::Status::OrSymbol,
          type: Telnyx::Models::RoomRecordingListResponse::Type::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the room recording.
        id: nil,
        # Shows the codec used for the room recording.
        codec: nil,
        # ISO 8601 timestamp when the room recording has completed.
        completed_at: nil,
        # ISO 8601 timestamp when the room recording was created.
        created_at: nil,
        # Url to download the recording.
        download_url: nil,
        # Shows the room recording duration in seconds.
        duration_secs: nil,
        # ISO 8601 timestamp when the room recording has ended.
        ended_at: nil,
        # Identify the room participant associated with the room recording.
        participant_id: nil,
        record_type: nil,
        # Identify the room associated with the room recording.
        room_id: nil,
        # Identify the room session associated with the room recording.
        session_id: nil,
        # Shows the room recording size in MB.
        size_mb: nil,
        # ISO 8601 timestamp when the room recording has stated.
        started_at: nil,
        # Shows the room recording status.
        status: nil,
        # Shows the room recording type.
        type: nil,
        # ISO 8601 timestamp when the room recording was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            codec: String,
            completed_at: Time,
            created_at: Time,
            download_url: String,
            duration_secs: Integer,
            ended_at: Time,
            participant_id: String,
            record_type: String,
            room_id: String,
            session_id: String,
            size_mb: Float,
            started_at: Time,
            status:
              Telnyx::Models::RoomRecordingListResponse::Status::TaggedSymbol,
            type: Telnyx::Models::RoomRecordingListResponse::Type::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Shows the room recording status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::RoomRecordingListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(
            :completed,
            Telnyx::Models::RoomRecordingListResponse::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Telnyx::Models::RoomRecordingListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::RoomRecordingListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Shows the room recording type.
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::RoomRecordingListResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUDIO =
          T.let(
            :audio,
            Telnyx::Models::RoomRecordingListResponse::Type::TaggedSymbol
          )
        VIDEO =
          T.let(
            :video,
            Telnyx::Models::RoomRecordingListResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::RoomRecordingListResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
