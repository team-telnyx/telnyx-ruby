# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      class MeetingSessionArtifact < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute content
        #
        #   @return [Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Content, nil]
        required :content, -> { Telnyx::MeetingSessions::MeetingSessionArtifact::Content }, nil?: true

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute failure_reason
        #
        #   @return [String, nil]
        required :failure_reason, String, nil?: true

        # @!attribute model_provenance
        #
        #   @return [Telnyx::Models::MeetingSessions::MeetingSessionArtifact::ModelProvenance, nil]
        required :model_provenance,
                 -> { Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance },
                 nil?: true

        # @!attribute session_id
        #
        #   @return [String]
        required :session_id, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Status]
        required :status, enum: -> { Telnyx::MeetingSessions::MeetingSessionArtifact::Status }

        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Type]
        required :type, enum: -> { Telnyx::MeetingSessions::MeetingSessionArtifact::Type }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(id:, content:, created_at:, failure_reason:, model_provenance:, session_id:, status:, type:, updated_at:)
        #   @param id [String]
        #   @param content [Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Content, nil]
        #   @param created_at [Time]
        #   @param failure_reason [String, nil]
        #   @param model_provenance [Telnyx::Models::MeetingSessions::MeetingSessionArtifact::ModelProvenance, nil]
        #   @param session_id [String]
        #   @param status [Symbol, Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Status]
        #   @param type [Symbol, Telnyx::Models::MeetingSessions::MeetingSessionArtifact::Type]
        #   @param updated_at [Time]

        # @see Telnyx::Models::MeetingSessions::MeetingSessionArtifact#content
        class Content < Telnyx::Internal::Type::BaseModel
          # @!attribute text
          #
          #   @return [String]
          required :text, String

          # @!method initialize(text:)
          #   @param text [String]
        end

        # @see Telnyx::Models::MeetingSessions::MeetingSessionArtifact#model_provenance
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
          #   @param model [String]
          #   @param provider [String]
        end

        # @see Telnyx::Models::MeetingSessions::MeetingSessionArtifact#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::MeetingSessions::MeetingSessionArtifact#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SUMMARY = :summary
          ACTION_ITEMS = :action_items

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    MeetingSessionArtifact = MeetingSessions::MeetingSessionArtifact
  end
end
