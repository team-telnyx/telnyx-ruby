# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebSearch#create
    class WebSearchCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute query
      #   The search query text.
      #
      #   @return [String]
      required :query, String

      # @!attribute count
      #   Number of results to return (1-100).
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!attribute country
      #   Two-letter country code (ISO 3166-1 alpha-2) to bias results.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute exclude_domains
      #   Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
      #
      #   @return [Array<String>, nil]
      optional :exclude_domains, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute freshness
      #   Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
      #
      #   @return [String, nil]
      optional :freshness, String

      # @!attribute include_domains
      #   Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
      #
      #   @return [Array<String>, nil]
      optional :include_domains, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute livecrawl
      #   When true, the provider crawls pages in real-time for fresh content. The boolean
      #   is translated to the provider's internal enum internally; callers always pass
      #   `true` or `false`.
      #
      #   @return [Boolean, nil]
      optional :livecrawl, Telnyx::Internal::Type::Boolean

      # @!attribute safesearch
      #   Safe search filter level.
      #
      #   @return [Symbol, Telnyx::Models::WebSearchCreateParams::Safesearch, nil]
      optional :safesearch, enum: -> { Telnyx::WebSearchCreateParams::Safesearch }

      # @!method initialize(query:, count: nil, country: nil, exclude_domains: nil, freshness: nil, include_domains: nil, livecrawl: nil, safesearch: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WebSearchCreateParams} for more details.
      #
      #   @param query [String] The search query text.
      #
      #   @param count [Integer] Number of results to return (1-100).
      #
      #   @param country [String] Two-letter country code (ISO 3166-1 alpha-2) to bias results.
      #
      #   @param exclude_domains [Array<String>] Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
      #
      #   @param freshness [String] Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
      #
      #   @param include_domains [Array<String>] Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
      #
      #   @param livecrawl [Boolean] When true, the provider crawls pages in real-time for fresh content. The boolean
      #
      #   @param safesearch [Symbol, Telnyx::Models::WebSearchCreateParams::Safesearch] Safe search filter level.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Safe search filter level.
      module Safesearch
        extend Telnyx::Internal::Type::Enum

        OFF = :off
        MODERATE = :moderate
        STRICT = :strict

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
