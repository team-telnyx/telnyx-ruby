# frozen_string_literal: true

module Telnyx
  module Models
    class RecordingExportFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #
      #   @return [Telnyx::Models::RecordingExportFailedWebhookEvent::Data]
      required :data, -> { Telnyx::RecordingExportFailedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::RecordingExportFailedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::RecordingExportFailedWebhookEvent::Event }

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
      #   @param data [Telnyx::Models::RecordingExportFailedWebhookEvent::Data]
      #
      #   @param event [Symbol, Telnyx::Models::RecordingExportFailedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::RecordingExportFailedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute bucket
        #
        #   @return [String]
        required :bucket, String

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!attribute reason
        #
        #   @return [Symbol, Telnyx::Models::RecordingExportFailedWebhookEvent::Data::Reason]
        required :reason, enum: -> { Telnyx::RecordingExportFailedWebhookEvent::Data::Reason }

        # @!attribute region
        #
        #   @return [String]
        required :region, String

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute type
        #
        #   @return [Symbol, :video]
        required :type, const: :video

        # @!method initialize(bucket:, key:, reason:, region:, session_id:, type: :video)
        #   @param bucket [String]
        #   @param key [String]
        #   @param reason [Symbol, Telnyx::Models::RecordingExportFailedWebhookEvent::Data::Reason]
        #   @param region [String]
        #   @param session_id [String]
        #   @param type [Symbol, :video]

        # @see Telnyx::Models::RecordingExportFailedWebhookEvent::Data#reason
        module Reason
          extend Telnyx::Internal::Type::Enum

          INVALID_TARGET = :invalid_target
          INVALID_MEDIA = :invalid_media
          SOURCE_CHANGED = :source_changed
          SOURCE_UNAVAILABLE = :source_unavailable
          TOO_LARGE = :too_large
          STORAGE_UNAVAILABLE = :storage_unavailable
          OBJECT_CONFLICT = :object_conflict
          VERIFICATION_FAILED = :verification_failed
          WORKER_LOST = :worker_lost
          INTERNAL_ERROR = :internal_error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Event type.
      #
      # @see Telnyx::Models::RecordingExportFailedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        RECORDING_EXPORT_FAILED = :"recording.export_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
