# frozen_string_literal: true

module Telnyx
  module Models
    class RecordingAvailableWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #   Available recording types.
      #
      #   @return [Telnyx::Models::RecordingAvailableWebhookEvent::Data]
      required :data, -> { Telnyx::RecordingAvailableWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::RecordingAvailableWebhookEvent::Event]
      required :event, enum: -> { Telnyx::RecordingAvailableWebhookEvent::Event }

      # @!attribute occurred_at
      #   When the event occurred.
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute version
      #   Envelope version.
      #
      #   @return [String]
      required :version, String

      # @!method initialize(id:, data:, event:, occurred_at:, version:)
      #   @param id [String] Unique event id; deduplicate deliveries on it.
      #
      #   @param data [Telnyx::Models::RecordingAvailableWebhookEvent::Data] Available recording types.
      #
      #   @param event [Symbol, Telnyx::Models::RecordingAvailableWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::RecordingAvailableWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute recording_types
        #   Available recording types.
        #
        #   @return [Array<String>]
        required :recording_types, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute session_id
        #   The meeting session this event belongs to.
        #
        #   @return [String]
        required :session_id, String

        # @!method initialize(recording_types:, session_id:)
        #   Available recording types.
        #
        #   @param recording_types [Array<String>] Available recording types.
        #
        #   @param session_id [String] The meeting session this event belongs to.
      end

      # Event type.
      #
      # @see Telnyx::Models::RecordingAvailableWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        RECORDING_AVAILABLE = :"recording.available"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
