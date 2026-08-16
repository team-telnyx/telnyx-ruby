# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebSearch#contents
    class WebSearchContentsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute urls
      #   List of URLs to retrieve content from (max 20 for public API).
      #
      #   @return [Array<String>]
      required :urls, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute crawl_timeout
      #   Timeout for crawling each URL, in seconds (1-60).
      #
      #   @return [Integer, nil]
      optional :crawl_timeout, Integer

      # @!attribute formats
      #   Content formats to return. If omitted, `html` and `metadata` are returned by
      #   default. Retrieval is best-effort per URL: a format field appears only when that
      #   content could be produced, and a freshly crawled page may also include `html`
      #   even when not requested.
      #
      #   @return [Array<Symbol, Telnyx::Models::WebSearchContentsParams::Format>, nil]
      optional :formats, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::WebSearchContentsParams::Format] }

      # @!attribute max_age
      #   Maximum age of cached content in seconds. `null` means no limit.
      #
      #   @return [Integer, nil]
      optional :max_age, Integer, nil?: true

      # @!method initialize(urls:, crawl_timeout: nil, formats: nil, max_age: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WebSearchContentsParams} for more details.
      #
      #   @param urls [Array<String>] List of URLs to retrieve content from (max 20 for public API).
      #
      #   @param crawl_timeout [Integer] Timeout for crawling each URL, in seconds (1-60).
      #
      #   @param formats [Array<Symbol, Telnyx::Models::WebSearchContentsParams::Format>] Content formats to return. If omitted, `html` and `metadata` are returned by def
      #
      #   @param max_age [Integer, nil] Maximum age of cached content in seconds. `null` means no limit.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Format
        extend Telnyx::Internal::Type::Enum

        HTML = :html
        MARKDOWN = :markdown
        METADATA = :metadata

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
