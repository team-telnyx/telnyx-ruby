# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Rooms#list
    class Room < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for the room.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute active_session_id
      #   The identifier of the active room session if any.
      #
      #   @return [String, nil]
      optional :active_session_id, String

      # @!attribute created_at
      #   ISO 8601 timestamp when the room was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute enable_recording
      #   Enable or disable recording for that room.
      #
      #   @return [Boolean, nil]
      optional :enable_recording, Telnyx::Internal::Type::Boolean

      # @!attribute max_participants
      #   Maximum participants allowed in the room.
      #
      #   @return [Integer, nil]
      optional :max_participants, Integer

      # @!attribute sessions
      #
      #   @return [Array<Telnyx::Models::RoomSession>, nil]
      optional :sessions, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RoomSession] }

      # @!attribute unique_name
      #   The unique (within the Telnyx account scope) name of the room.
      #
      #   @return [String, nil]
      optional :unique_name, String

      # @!attribute updated_at
      #   ISO 8601 timestamp when the room was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this room will be sent if sending to
      #   the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this room will be sent. Must include a scheme,
      #   such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer

      response_only do
        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, active_session_id: nil, created_at: nil, enable_recording: nil, max_participants: nil, record_type: nil, sessions: nil, unique_name: nil, updated_at: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Room} for
      #   more details.
      #
      #   @param id [String] A unique identifier for the room.
      #
      #   @param active_session_id [String] The identifier of the active room session if any.
      #
      #   @param created_at [Time] ISO 8601 timestamp when the room was created.
      #
      #   @param enable_recording [Boolean] Enable or disable recording for that room.
      #
      #   @param max_participants [Integer] Maximum participants allowed in the room.
      #
      #   @param record_type [String]
      #
      #   @param sessions [Array<Telnyx::Models::RoomSession>]
      #
      #   @param unique_name [String] The unique (within the Telnyx account scope) name of the room.
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the room was updated.
      #
      #   @param webhook_event_failover_url [String] The failover URL where webhooks related to this room will be sent if sending to
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this room will be sent. Must include a scheme,
      #
      #   @param webhook_timeout_secs [Integer] Specifies how many seconds to wait before timing out a webhook.
    end
  end
end
