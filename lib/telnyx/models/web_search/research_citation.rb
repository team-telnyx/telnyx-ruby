# frozen_string_literal: true

module Telnyx
  module Models
    module WebSearch
      class ResearchCitation < Telnyx::Internal::Type::BaseModel
        # @!attribute title
        #   Title of the source page.
        #
        #   @return [String]
        required :title, String

        # @!attribute url
        #   Source URL.
        #
        #   @return [String]
        required :url, String

        # @!attribute snippet
        #   Relevant excerpt from the source (if available).
        #
        #   @return [String, nil]
        optional :snippet, String

        # @!method initialize(title:, url:, snippet: nil)
        #   @param title [String] Title of the source page.
        #
        #   @param url [String] Source URL.
        #
        #   @param snippet [String] Relevant excerpt from the source (if available).
      end
    end
  end
end
