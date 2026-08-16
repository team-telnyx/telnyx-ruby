# frozen_string_literal: true

module Telnyx
  module Models
    class TranscriptCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #   Finalized transcript details.
      #
      #   @return [Telnyx::Models::TranscriptCompletedWebhookEvent::Data]
      required :data, -> { Telnyx::TranscriptCompletedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::TranscriptCompletedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::TranscriptCompletedWebhookEvent::Event }

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
      #   @param data [Telnyx::Models::TranscriptCompletedWebhookEvent::Data] Finalized transcript details.
      #
      #   @param event [Symbol, Telnyx::Models::TranscriptCompletedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::TranscriptCompletedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute ended_at
        #   Session end time, or null when unavailable.
        #
        #   @return [Time, nil]
        required :ended_at, Time, nil?: true

        # @!attribute last_seq
        #   Last transcript segment sequence number, or null for an empty transcript.
        #
        #   @return [Integer, nil]
        required :last_seq, Integer, nil?: true

        # @!attribute segment_count
        #   Number of transcript segments observed during finalization.
        #
        #   @return [Integer]
        required :segment_count, Integer

        # @!attribute session_id
        #   The meeting session this event belongs to.
        #
        #   @return [String]
        required :session_id, String

        # @!method initialize(ended_at:, last_seq:, segment_count:, session_id:)
        #   Finalized transcript details.
        #
        #   @param ended_at [Time, nil] Session end time, or null when unavailable.
        #
        #   @param last_seq [Integer, nil] Last transcript segment sequence number, or null for an empty transcript.
        #
        #   @param segment_count [Integer] Number of transcript segments observed during finalization.
        #
        #   @param session_id [String] The meeting session this event belongs to.
      end

      # Event type.
      #
      # @see Telnyx::Models::TranscriptCompletedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        TRANSCRIPT_COMPLETED = :"transcript.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
