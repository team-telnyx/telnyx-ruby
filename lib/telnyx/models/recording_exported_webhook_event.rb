# frozen_string_literal: true

module Telnyx
  module Models
    class RecordingExportedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #
      #   @return [Telnyx::Models::RecordingExportedWebhookEvent::Data]
      required :data, -> { Telnyx::RecordingExportedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::RecordingExportedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::RecordingExportedWebhookEvent::Event }

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
      #   @param data [Telnyx::Models::RecordingExportedWebhookEvent::Data]
      #
      #   @param event [Symbol, Telnyx::Models::RecordingExportedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::RecordingExportedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute bucket
        #
        #   @return [String]
        required :bucket, String

        # @!attribute bytes
        #
        #   @return [Integer]
        required :bytes, Integer

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!attribute region
        #
        #   @return [String]
        required :region, String

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute sha256
        #
        #   @return [String]
        required :sha256, String

        # @!attribute type
        #
        #   @return [Symbol, :video]
        required :type, const: :video

        # @!method initialize(bucket:, bytes:, key:, region:, session_id:, sha256:, type: :video)
        #   @param bucket [String]
        #   @param bytes [Integer]
        #   @param key [String]
        #   @param region [String]
        #   @param session_id [String]
        #   @param sha256 [String]
        #   @param type [Symbol, :video]
      end

      # Event type.
      #
      # @see Telnyx::Models::RecordingExportedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        RECORDING_EXPORTED = :"recording.exported"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
