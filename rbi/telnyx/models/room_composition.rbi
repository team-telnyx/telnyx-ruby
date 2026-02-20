# typed: strong

module Telnyx
  module Models
    class RoomComposition < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomComposition, Telnyx::Internal::AnyHash)
        end

      # A unique identifier for the room composition.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 timestamp when the room composition has completed.
      sig { returns(T.nilable(Time)) }
      attr_reader :completed_at

      sig { params(completed_at: Time).void }
      attr_writer :completed_at

      # ISO 8601 timestamp when the room composition was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Url to download the composition.
      sig { returns(T.nilable(String)) }
      attr_reader :download_url

      sig { params(download_url: String).void }
      attr_writer :download_url

      # Shows the room composition duration in seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :duration_secs

      sig { params(duration_secs: Integer).void }
      attr_writer :duration_secs

      # ISO 8601 timestamp when the room composition has ended.
      sig { returns(T.nilable(Time)) }
      attr_reader :ended_at

      sig { params(ended_at: Time).void }
      attr_writer :ended_at

      # Shows format of the room composition.
      sig { returns(T.nilable(Telnyx::RoomComposition::Format::TaggedSymbol)) }
      attr_reader :file_format

      sig do
        params(file_format: Telnyx::RoomComposition::Format::OrSymbol).void
      end
      attr_writer :file_format

      # The resolution of the room composition.
      sig { returns(T.nilable(String)) }
      attr_reader :resolution

      sig { params(resolution: String).void }
      attr_writer :resolution

      # Identify the room associated with the room composition.
      sig { returns(T.nilable(String)) }
      attr_reader :room_id

      sig { params(room_id: String).void }
      attr_writer :room_id

      # Identify the room session associated with the room composition.
      sig { returns(T.nilable(String)) }
      attr_reader :session_id

      sig { params(session_id: String).void }
      attr_writer :session_id

      # Shows the room composition size in MB.
      sig { returns(T.nilable(Float)) }
      attr_reader :size_mb

      sig { params(size_mb: Float).void }
      attr_writer :size_mb

      # ISO 8601 timestamp when the room composition has stated.
      sig { returns(T.nilable(Time)) }
      attr_reader :started_at

      sig { params(started_at: Time).void }
      attr_writer :started_at

      # Shows the room composition status.
      sig { returns(T.nilable(Telnyx::RoomComposition::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::RoomComposition::Status::OrSymbol).void }
      attr_writer :status

      # ISO 8601 timestamp when the room composition was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Identify the user associated with the room composition.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Describes the video layout of the room composition in terms of regions. Limited
      # to 2 regions.
      sig { returns(T.nilable(T::Hash[Symbol, Telnyx::VideoRegion])) }
      attr_reader :video_layout

      sig do
        params(video_layout: T::Hash[Symbol, Telnyx::VideoRegion::OrHash]).void
      end
      attr_writer :video_layout

      # The failover URL where webhooks related to this room composition will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_failover_url

      sig { params(webhook_event_failover_url: String).void }
      attr_writer :webhook_event_failover_url

      # The URL where webhooks related to this room composition will be sent. Must
      # include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_reader :webhook_timeout_secs

      sig { params(webhook_timeout_secs: Integer).void }
      attr_writer :webhook_timeout_secs

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          id: String,
          completed_at: Time,
          created_at: Time,
          download_url: String,
          duration_secs: Integer,
          ended_at: Time,
          file_format: Telnyx::RoomComposition::Format::OrSymbol,
          record_type: String,
          resolution: String,
          room_id: String,
          session_id: String,
          size_mb: Float,
          started_at: Time,
          status: Telnyx::RoomComposition::Status::OrSymbol,
          updated_at: Time,
          user_id: String,
          video_layout: T::Hash[Symbol, Telnyx::VideoRegion::OrHash],
          webhook_event_failover_url: String,
          webhook_event_url: String,
          webhook_timeout_secs: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for the room composition.
        id: nil,
        # ISO 8601 timestamp when the room composition has completed.
        completed_at: nil,
        # ISO 8601 timestamp when the room composition was created.
        created_at: nil,
        # Url to download the composition.
        download_url: nil,
        # Shows the room composition duration in seconds.
        duration_secs: nil,
        # ISO 8601 timestamp when the room composition has ended.
        ended_at: nil,
        # Shows format of the room composition.
        file_format: nil,
        record_type: nil,
        # The resolution of the room composition.
        resolution: nil,
        # Identify the room associated with the room composition.
        room_id: nil,
        # Identify the room session associated with the room composition.
        session_id: nil,
        # Shows the room composition size in MB.
        size_mb: nil,
        # ISO 8601 timestamp when the room composition has stated.
        started_at: nil,
        # Shows the room composition status.
        status: nil,
        # ISO 8601 timestamp when the room composition was updated.
        updated_at: nil,
        # Identify the user associated with the room composition.
        user_id: nil,
        # Describes the video layout of the room composition in terms of regions. Limited
        # to 2 regions.
        video_layout: nil,
        # The failover URL where webhooks related to this room composition will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room composition will be sent. Must
        # include a scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            completed_at: Time,
            created_at: Time,
            download_url: String,
            duration_secs: Integer,
            ended_at: Time,
            file_format: Telnyx::RoomComposition::Format::TaggedSymbol,
            record_type: String,
            resolution: String,
            room_id: String,
            session_id: String,
            size_mb: Float,
            started_at: Time,
            status: Telnyx::RoomComposition::Status::TaggedSymbol,
            updated_at: Time,
            user_id: String,
            video_layout: T::Hash[Symbol, Telnyx::VideoRegion],
            webhook_event_failover_url: String,
            webhook_event_url: String,
            webhook_timeout_secs: Integer
          }
        )
      end
      def to_hash
      end

      # Shows format of the room composition.
      module Format
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RoomComposition::Format) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MP4 = T.let(:mp4, Telnyx::RoomComposition::Format::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RoomComposition::Format::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Shows the room composition status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RoomComposition::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMPLETED =
          T.let(:completed, Telnyx::RoomComposition::Status::TaggedSymbol)
        ENQUEUED =
          T.let(:enqueued, Telnyx::RoomComposition::Status::TaggedSymbol)
        PROCESSING =
          T.let(:processing, Telnyx::RoomComposition::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RoomComposition::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
