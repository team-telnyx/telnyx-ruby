# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Collections#create
      class CollectionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #   Human-readable collection name.
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #   Optional description.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute settings
        #   Optional retrieval settings.
        #
        #   @return [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper, nil]
        optional :settings, -> { Telnyx::AI::Collections::RetrievalSettingsWrapper }

        # @!attribute slug
        #   Optional slug (unique per organization). Derived from `name` when omitted.
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute sources
        #   Optional sources to attach at creation time.
        #
        #   @return [Array<Telnyx::Models::AI::Collections::SourceRequest>, nil]
        optional :sources, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::SourceRequest] }

        # @!method initialize(name:, description: nil, settings: nil, slug: nil, sources: nil, request_options: {})
        #   @param name [String] Human-readable collection name.
        #
        #   @param description [String] Optional description.
        #
        #   @param settings [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper] Optional retrieval settings.
        #
        #   @param slug [String] Optional slug (unique per organization). Derived from `name` when omitted.
        #
        #   @param sources [Array<Telnyx::Models::AI::Collections::SourceRequest>] Optional sources to attach at creation time.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
