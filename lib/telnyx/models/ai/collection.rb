# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#list
      class Collection < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #   Identifies the record type. Always `ai_collection`.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute settings
        #
        #   @return [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper, nil]
        optional :settings, -> { Telnyx::AI::Collections::RetrievalSettingsWrapper }

        # @!attribute slug
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute sources
        #
        #   @return [Array<Telnyx::Models::AI::Collections::Source>, nil]
        optional :sources, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::Source] }

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute uuid
        #
        #   @return [String, nil]
        optional :uuid, String

        # @!method initialize(created_at: nil, description: nil, name: nil, record_type: nil, settings: nil, slug: nil, sources: nil, status: nil, updated_at: nil, uuid: nil)
        #   @param created_at [Time]
        #
        #   @param description [String]
        #
        #   @param name [String]
        #
        #   @param record_type [String] Identifies the record type. Always `ai_collection`.
        #
        #   @param settings [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper]
        #
        #   @param slug [String]
        #
        #   @param sources [Array<Telnyx::Models::AI::Collections::Source>]
        #
        #   @param status [String]
        #
        #   @param updated_at [Time]
        #
        #   @param uuid [String]
      end
    end
  end
end
