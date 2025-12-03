# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RoomCompositions#list
    class RoomComposition < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the room composition.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute completed_at
      #   ISO 8601 timestamp when the room composition has completed.
      #
      #   @return [Time, nil]
      optional :completed_at, Time

      # @!attribute created_at
      #   ISO 8601 timestamp when the room composition was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute download_url
      #   Url to download the composition.
      #
      #   @return [String, nil]
      optional :download_url, String

      # @!attribute duration_secs
      #   Shows the room composition duration in seconds.
      #
      #   @return [Integer, nil]
      optional :duration_secs, Integer

      # @!attribute ended_at
      #   ISO 8601 timestamp when the room composition has ended.
      #
      #   @return [Time, nil]
      optional :ended_at, Time

      # @!attribute format_
      #   Shows format of the room composition.
      #
      #   @return [Symbol, Telnyx::Models::RoomComposition::Format, nil]
      optional :format_, enum: -> { Telnyx::RoomComposition::Format }, api_name: :format

      # @!attribute room_id
      #   Identify the room associated with the room composition.
      #
      #   @return [String, nil]
      optional :room_id, String

      # @!attribute session_id
      #   Identify the room session associated with the room composition.
      #
      #   @return [String, nil]
      optional :session_id, String

      # @!attribute size_mb
      #   Shows the room composition size in MB.
      #
      #   @return [Float, nil]
      optional :size_mb, Float

      # @!attribute started_at
      #   ISO 8601 timestamp when the room composition has stated.
      #
      #   @return [Time, nil]
      optional :started_at, Time

      # @!attribute status
      #   Shows the room composition status.
      #
      #   @return [Symbol, Telnyx::Models::RoomComposition::Status, nil]
      optional :status, enum: -> { Telnyx::RoomComposition::Status }

      # @!attribute updated_at
      #   ISO 8601 timestamp when the room composition was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute user_id
      #   Identify the user associated with the room composition.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute video_layout
      #   Describes the video layout of the room composition in terms of regions. Limited
      #   to 2 regions.
      #
      #   @return [Hash{Symbol=>Telnyx::Models::VideoRegion}, nil]
      optional :video_layout, -> { Telnyx::Internal::Type::HashOf[Telnyx::VideoRegion] }

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this room composition will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this room composition will be sent. Must
      #   include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      response_only do
        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, completed_at: nil, created_at: nil, download_url: nil, duration_secs: nil, ended_at: nil, format_: nil, record_type: nil, room_id: nil, session_id: nil, size_mb: nil, started_at: nil, status: nil, updated_at: nil, user_id: nil, video_layout: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RoomComposition} for more details.
      #
      #   @param id [String] A unique identifier for the room composition.
      #
      #   @param completed_at [Time] ISO 8601 timestamp when the room composition has completed.
      #
      #   @param created_at [Time] ISO 8601 timestamp when the room composition was created.
      #
      #   @param download_url [String] Url to download the composition.
      #
      #   @param duration_secs [Integer] Shows the room composition duration in seconds.
      #
      #   @param ended_at [Time] ISO 8601 timestamp when the room composition has ended.
      #
      #   @param format_ [Symbol, Telnyx::Models::RoomComposition::Format] Shows format of the room composition.
      #
      #   @param record_type [String]
      #
      #   @param room_id [String] Identify the room associated with the room composition.
      #
      #   @param session_id [String] Identify the room session associated with the room composition.
      #
      #   @param size_mb [Float] Shows the room composition size in MB.
      #
      #   @param started_at [Time] ISO 8601 timestamp when the room composition has stated.
      #
      #   @param status [Symbol, Telnyx::Models::RoomComposition::Status] Shows the room composition status.
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the room composition was updated.
      #
      #   @param user_id [String] Identify the user associated with the room composition.
      #
      #   @param video_layout [Hash{Symbol=>Telnyx::Models::VideoRegion}] Describes the video layout of the room composition in terms of regions. Limited
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this room composition will be sent if
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this room composition will be sent. Must inclu
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # Shows format of the room composition.
      #
      # @see Telnyx::Models::RoomComposition#format_
      module Format
        extend Telnyx::Internal::Type::Enum

        MP4 = :mp4

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Shows the room composition status.
      #
      # @see Telnyx::Models::RoomComposition#status
      module Status
        extend Telnyx::Internal::Type::Enum

        COMPLETED = :completed
        ENQUEUED = :enqueued
        PROCESSING = :processing

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
