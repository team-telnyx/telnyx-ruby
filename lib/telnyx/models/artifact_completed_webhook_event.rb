# frozen_string_literal: true

module Telnyx
  module Models
    class ArtifactCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique event id; deduplicate deliveries on it.
      #
      #   @return [String]
      required :id, String

      # @!attribute data
      #   Completed artifact, including its generated content.
      #
      #   @return [Telnyx::Models::ArtifactCompletedWebhookEvent::Data]
      required :data, -> { Telnyx::ArtifactCompletedWebhookEvent::Data }

      # @!attribute event
      #   Event type.
      #
      #   @return [Symbol, Telnyx::Models::ArtifactCompletedWebhookEvent::Event]
      required :event, enum: -> { Telnyx::ArtifactCompletedWebhookEvent::Event }

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
      #   @param data [Telnyx::Models::ArtifactCompletedWebhookEvent::Data] Completed artifact, including its generated content.
      #
      #   @param event [Symbol, Telnyx::Models::ArtifactCompletedWebhookEvent::Event] Event type.
      #
      #   @param occurred_at [Time] When the event occurred.
      #
      #   @param version [String] Envelope version.

      # @see Telnyx::Models::ArtifactCompletedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute artifact_id
        #   Id of the completed artifact.
        #
        #   @return [String]
        required :artifact_id, String

        # @!attribute content
        #   Generated artifact content.
        #
        #   @return [Telnyx::Models::ArtifactCompletedWebhookEvent::Data::Content]
        required :content, -> { Telnyx::ArtifactCompletedWebhookEvent::Data::Content }

        # @!attribute model_provenance
        #   Model that generated the artifact.
        #
        #   @return [Telnyx::Models::ArtifactCompletedWebhookEvent::Data::ModelProvenance]
        required :model_provenance, -> { Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance }

        # @!attribute session_id
        #   The meeting session this event belongs to.
        #
        #   @return [String]
        required :session_id, String

        # @!attribute type
        #   Type of the completed artifact.
        #
        #   @return [Symbol, Telnyx::Models::ArtifactCompletedWebhookEvent::Data::Type]
        required :type, enum: -> { Telnyx::ArtifactCompletedWebhookEvent::Data::Type }

        # @!method initialize(artifact_id:, content:, model_provenance:, session_id:, type:)
        #   Completed artifact, including its generated content.
        #
        #   @param artifact_id [String] Id of the completed artifact.
        #
        #   @param content [Telnyx::Models::ArtifactCompletedWebhookEvent::Data::Content] Generated artifact content.
        #
        #   @param model_provenance [Telnyx::Models::ArtifactCompletedWebhookEvent::Data::ModelProvenance] Model that generated the artifact.
        #
        #   @param session_id [String] The meeting session this event belongs to.
        #
        #   @param type [Symbol, Telnyx::Models::ArtifactCompletedWebhookEvent::Data::Type] Type of the completed artifact.

        # @see Telnyx::Models::ArtifactCompletedWebhookEvent::Data#content
        class Content < Telnyx::Internal::Type::BaseModel
          # @!attribute text
          #   Generated artifact text.
          #
          #   @return [String]
          required :text, String

          # @!method initialize(text:)
          #   Generated artifact content.
          #
          #   @param text [String] Generated artifact text.
        end

        # @see Telnyx::Models::ArtifactCompletedWebhookEvent::Data#model_provenance
        class ModelProvenance < Telnyx::Internal::Type::BaseModel
          # @!attribute model
          #
          #   @return [String]
          required :model, String

          # @!attribute provider
          #
          #   @return [String]
          required :provider, String

          # @!method initialize(model:, provider:)
          #   Model that generated the artifact.
          #
          #   @param model [String]
          #   @param provider [String]
        end

        # Type of the completed artifact.
        #
        # @see Telnyx::Models::ArtifactCompletedWebhookEvent::Data#type
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
      # @see Telnyx::Models::ArtifactCompletedWebhookEvent#event
      module Event
        extend Telnyx::Internal::Type::Enum

        ARTIFACT_COMPLETED = :"artifact.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
