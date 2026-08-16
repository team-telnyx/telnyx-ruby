# typed: strong

module Telnyx
  module Resources
    class WebSearch
      # Deep research with citations and async task polling.
      sig { returns(Telnyx::Resources::WebSearch::Research) }
      attr_reader :research

      # Performs a real-time web search and returns structured, LLM-ready JSON results
      # with titles, URLs, descriptions, and snippets. Supports filtering by domain,
      # country, safe search, freshness, and live crawl.
      #
      # **Note:** `include_domains` and `exclude_domains` cannot be used in the same
      # request. Use one or the other.
      sig do
        params(
          query: String,
          count: Integer,
          country: String,
          exclude_domains: T::Array[String],
          freshness: String,
          include_domains: T::Array[String],
          livecrawl: T::Boolean,
          safesearch: Telnyx::WebSearchCreateParams::Safesearch::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WebSearchCreateResponse)
      end
      def create(
        # The search query text.
        query:,
        # Number of results to return (1-100).
        count: nil,
        # Two-letter country code (ISO 3166-1 alpha-2) to bias results.
        country: nil,
        # Exclude results from these domains (bare hostnames, e.g. `pinterest.com`).
        exclude_domains: nil,
        # Time-based filter for results. Common values: `day`, `week`, `month`, `year`.
        freshness: nil,
        # Restrict results to these domains (bare hostnames, e.g. `arxiv.org`).
        include_domains: nil,
        # When true, the provider crawls pages in real-time for fresh content. The boolean
        # is translated to the provider's internal enum internally; callers always pass
        # `true` or `false`.
        livecrawl: nil,
        # Safe search filter level.
        safesearch: nil,
        request_options: {}
      )
      end

      # Retrieves clean HTML or Markdown content from a list of URLs. Supports up to 20
      # URLs per request (public API limit). Specify which formats to return: `html`,
      # `markdown`, `metadata`.
      sig do
        params(
          urls: T::Array[String],
          crawl_timeout: Integer,
          formats: T::Array[Telnyx::WebSearchContentsParams::Format::OrSymbol],
          max_age: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WebSearchContentsResponse)
      end
      def contents(
        # List of URLs to retrieve content from (max 20 for public API).
        urls:,
        # Timeout for crawling each URL, in seconds (1-60).
        crawl_timeout: nil,
        # Content formats to return. If omitted, `html` and `metadata` are returned by
        # default. Retrieval is best-effort per URL: a format field appears only when that
        # content could be produced, and a freshly crawled page may also include `html`
        # even when not requested.
        formats: nil,
        # Maximum age of cached content in seconds. `null` means no limit.
        max_age: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
