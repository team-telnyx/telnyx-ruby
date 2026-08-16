# frozen_string_literal: true

module Telnyx
  module Models
    class WebSearchResult < Telnyx::Internal::Type::BaseModel
      # @!attribute description
      #   Short description or excerpt.
      #
      #   @return [String]
      required :description, String

      # @!attribute snippets
      #   Relevant text snippets from the page.
      #
      #   @return [Array<String>]
      required :snippets, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute title
      #   Result title.
      #
      #   @return [String]
      required :title, String

      # @!attribute url
      #   Result URL.
      #
      #   @return [String]
      required :url, String

      # @!attribute favicon_url
      #   Favicon URL (if available).
      #
      #   @return [String, nil]
      optional :favicon_url, String

      # @!attribute thumbnail_url
      #   Thumbnail image URL (if available).
      #
      #   @return [String, nil]
      optional :thumbnail_url, String

      # @!method initialize(description:, snippets:, title:, url:, favicon_url: nil, thumbnail_url: nil)
      #   @param description [String] Short description or excerpt.
      #
      #   @param snippets [Array<String>] Relevant text snippets from the page.
      #
      #   @param title [String] Result title.
      #
      #   @param url [String] Result URL.
      #
      #   @param favicon_url [String] Favicon URL (if available).
      #
      #   @param thumbnail_url [String] Thumbnail image URL (if available).
    end
  end
end
