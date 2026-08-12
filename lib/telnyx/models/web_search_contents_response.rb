# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WebSearch#contents
    class WebSearchContentsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WebSearchContentsResponse::Data, nil]
      optional :data, -> { Telnyx::Models::WebSearchContentsResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WebSearchContentsResponse::Data]

      # @see Telnyx::Models::WebSearchContentsResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<Telnyx::Models::WebSearchContentsResponse::Data::Result>, nil]
        optional :results,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::WebSearchContentsResponse::Data::Result] }

        # @!method initialize(results: nil)
        #   @param results [Array<Telnyx::Models::WebSearchContentsResponse::Data::Result>]

        class Result < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   The source URL.
          #
          #   @return [String]
          required :url, String

          # @!attribute html
          #   Cleaned HTML content (if `html` format requested; may also be present on freshly
          #   crawled pages).
          #
          #   @return [String, nil]
          optional :html, String

          # @!attribute markdown
          #   Markdown content (if `markdown` format requested).
          #
          #   @return [String, nil]
          optional :markdown, String

          # @!attribute metadata
          #   Page metadata (if `metadata` format requested).
          #
          #   @return [Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata, nil]
          optional :metadata, -> { Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata }

          # @!attribute title
          #   Page title (if available).
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(url:, html: nil, markdown: nil, metadata: nil, title: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::WebSearchContentsResponse::Data::Result} for more details.
          #
          #   @param url [String] The source URL.
          #
          #   @param html [String] Cleaned HTML content (if `html` format requested; may also be present on freshly
          #
          #   @param markdown [String] Markdown content (if `markdown` format requested).
          #
          #   @param metadata [Telnyx::Models::WebSearchContentsResponse::Data::Result::Metadata] Page metadata (if `metadata` format requested).
          #
          #   @param title [String] Page title (if available).

          # @see Telnyx::Models::WebSearchContentsResponse::Data::Result#metadata
          class Metadata < Telnyx::Internal::Type::BaseModel
            # @!attribute favicon_url
            #   Favicon URL (if available).
            #
            #   @return [String, nil]
            optional :favicon_url, String

            # @!attribute site_name
            #   Site name. Often empty.
            #
            #   @return [String, nil]
            optional :site_name, String

            # @!method initialize(favicon_url: nil, site_name: nil)
            #   Page metadata (if `metadata` format requested).
            #
            #   @param favicon_url [String] Favicon URL (if available).
            #
            #   @param site_name [String] Site name. Often empty.
          end
        end
      end
    end
  end
end
