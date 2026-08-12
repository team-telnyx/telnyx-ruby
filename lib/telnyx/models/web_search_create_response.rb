# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebSearch#create
    class WebSearchCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WebSearchCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WebSearchCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WebSearchCreateResponse::Data]

      # @see Telnyx::Models::WebSearchCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Telnyx::Models::WebSearchCreateResponse::Data::Results, nil]
        optional :results, -> { Telnyx::Models::WebSearchCreateResponse::Data::Results }

        # @!method initialize(results: nil)
        #   @param results [Telnyx::Models::WebSearchCreateResponse::Data::Results]

        # @see Telnyx::Models::WebSearchCreateResponse::Data#results
        class Results < Telnyx::Internal::Type::BaseModel
          # @!attribute web
          #   Web search results.
          #
          #   @return [Array<Telnyx::Models::WebSearchResult>]
          required :web, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WebSearchResult] }

          # @!attribute news
          #   News search results. Present only when the query surfaces news results.
          #
          #   @return [Array<Telnyx::Models::WebSearchResult>, nil]
          optional :news, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WebSearchResult] }

          # @!method initialize(web:, news: nil)
          #   @param web [Array<Telnyx::Models::WebSearchResult>] Web search results.
          #
          #   @param news [Array<Telnyx::Models::WebSearchResult>] News search results. Present only when the query surfaces news results.
        end
      end
    end
  end
end
