# frozen_string_literal: true

module Telnyx
  module Models
    class ArtifactFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #   Failed artifact reference and reason.
      #
      #   @return [Telnyx::Models::ArtifactFailedWebhookEvent::Data]
      required :data, -> { Telnyx::ArtifactFailedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::ArtifactFailedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::ArtifactFailedWebhookEvent::Event }

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
      #   @param data [Telnyx::Models::ArtifactFailedWebhookEvent::Data] Failed artifact reference and reason.
      #
      #   @param event [Symbol, Telnyx::Models::ArtifactFailedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::ArtifactFailedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute artifact_id
        #   Id of the failed artifact.
        #
        #   @return [String]
        required :artifact_id, String

        # @!attribute session_id
        #   The meeting session this event belongs to.
        #
        #   @return [String]
        required :session_id, String

        # @!attribute type
        #   Type of the failed artifact.
        #
        #   @return [Symbol, Telnyx::Models::ArtifactFailedWebhookEvent::Data::Type]
        required :type, enum: -> { Telnyx::ArtifactFailedWebhookEvent::Data::Type }

        # @!method initialize(artifact_id:, session_id:, type:)
        #   Failed artifact reference and reason.
        #
        #   @param artifact_id [String] Id of the failed artifact.
        #
        #   @param session_id [String] The meeting session this event belongs to.
        #
        #   @param type [Symbol, Telnyx::Models::ArtifactFailedWebhookEvent::Data::Type] Type of the failed artifact.

        # Type of the failed artifact.
        #
        # @see Telnyx::Models::ArtifactFailedWebhookEvent::Data#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SUMMARY = :summary
          ACTION_ITEMS = :action_items

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Event type.
      #
      # @see Telnyx::Models::ArtifactFailedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        ARTIFACT_FAILED = :"artifact.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
