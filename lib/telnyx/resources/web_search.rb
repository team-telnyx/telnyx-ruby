# frozen_string_literal: true

module Telnyx
  module Resources
    class WebSearch
      # Deep research with citations and async task polling.
      # @return [Telnyx::Resources::WebSearch::Research]
      attr_reader :research

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WebSearchCreateParams} for more details.
      #
      # Performs a real-time web search and returns structured, LLM-ready JSON results
      # with titles, URLs, descriptions, and snippets. Supports filtering by domain,
      # country, safe search, freshness, and live crawl.
      #
      # **Note:** `include_domains` and `exclude_domains` cannot be used in the same
      # request. Use one or the other.
      #
      # @overload create(query:, count: nil, country: nil, exclude_domains: nil, freshness: nil, include_domains: nil, livecrawl: nil, safesearch: nil, request_options: {})
      #
      # @param query [String] The search query text.
      #
      # @param count [Integer] Number of results to return (1-100).
      #
      # @param country [String] Two-letter country code (ISO 3166-1 alpha-2) to bias results.
      #
      # @param exclude_domains [Array<String>] Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
      #
      # @param freshness [String] Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
      #
      # @param include_domains [Array<String>] Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
      #
      # @param livecrawl [Boolean] When true, the provider crawls pages in real-time for fresh content. The boolean
      #
      # @param safesearch [Symbol, Telnyx::Models::WebSearchCreateParams::Safesearch] Safe search filter level.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WebSearchCreateResponse]
      #
      # @see Telnyx::Models::WebSearchCreateParams
      def create(params)
        parsed, options = Telnyx::WebSearchCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "web_search",
          body: parsed,
          model: Telnyx::Models::WebSearchCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::WebSearchContentsParams} for more details.
      #
      # Retrieves clean HTML or Markdown content from a list of URLs. Supports up to 20
      # URLs per request (public API limit). Specify which formats to return: `html`,
      # `markdown`, `metadata`.
      #
      # @overload contents(urls:, crawl_timeout: nil, formats: nil, max_age: nil, request_options: {})
      #
      # @param urls [Array<String>] List of URLs to retrieve content from (max 20 for public API).
      #
      # @param crawl_timeout [Integer] Timeout for crawling each URL, in seconds (1-60).
      #
      # @param formats [Array<Symbol, Telnyx::Models::WebSearchContentsParams::Format>] Content formats to return. If omitted, `html` and `metadata` are returned by def
      #
      # @param max_age [Integer, nil] Maximum age of cached content in seconds. `null` means no limit.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::WebSearchContentsResponse]
      #
      # @see Telnyx::Models::WebSearchContentsParams
      def contents(params)
        parsed, options = Telnyx::WebSearchContentsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "web_search/contents",
          body: parsed,
          model: Telnyx::Models::WebSearchContentsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @research = Telnyx::Resources::WebSearch::Research.new(client: client)
      end
    end
  end
end
