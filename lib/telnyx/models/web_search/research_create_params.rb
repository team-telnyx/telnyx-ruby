# frozen_string_literal: true

module Telnyx
  module Models
    module WebSearch
      # @see Telnyx::Resources::WebSearch::Research#create
      class ResearchCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute query
        #   The research question or topic.
        #
        #   @return [String]
        required :query, String

        # @!attribute background
        #   When `true`, the research runs asynchronously. The response returns a `task_id`
        #   immediately instead of waiting for the result. Poll
        #   `GET /web_search/research/{task_id}` to check status.
        #
        #   @return [Boolean, nil]
        optional :background, Telnyx::Internal::Type::Boolean

        # @!attribute max_sources
        #   Maximum number of sources to use.
        #
        #   @return [Integer, nil]
        optional :max_sources, Integer

        # @!attribute research_effort
        #   Research depth level. `lite` is fastest, `deep` is most thorough.
        #
        #   @return [Symbol, Telnyx::Models::WebSearch::ResearchCreateParams::ResearchEffort, nil]
        optional :research_effort, enum: -> { Telnyx::WebSearch::ResearchCreateParams::ResearchEffort }

        # @!method initialize(query:, background: nil, max_sources: nil, research_effort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::WebSearch::ResearchCreateParams} for more details.
        #
        #   @param query [String] The research question or topic.
        #
        #   @param background [Boolean] When `true`, the research runs asynchronously. The response returns a `task_id`
        #
        #   @param max_sources [Integer] Maximum number of sources to use.
        #
        #   @param research_effort [Symbol, Telnyx::Models::WebSearch::ResearchCreateParams::ResearchEffort] Research depth level. `lite` is fastest, `deep` is most thorough.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Research depth level. `lite` is fastest, `deep` is most thorough.
        module ResearchEffort
          extend Telnyx::Internal::Type::Enum

          LITE = :lite
          STANDARD = :standard
          DEEP = :deep

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
