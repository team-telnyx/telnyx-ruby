# frozen_string_literal: true

module Telnyx
  module Models
    class VoiceDesignsPaginationMeta < Telnyx::Internal::Type::BaseModel
      # @!attribute page_number
      #   Current page number (1-based).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute total_pages
      #   Total number of pages.
      #
      #   @return [Integer, nil]
      optional :total_pages, Integer

      # @!attribute total_results
      #   Total number of results across all pages.
      #
      #   @return [Integer, nil]
      optional :total_results, Integer

      # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
      #   Pagination metadata returned with list responses.
      #
      #   @param page_number [Integer] Current page number (1-based).
      #
      #   @param page_size [Integer] Number of results per page.
      #
      #   @param total_pages [Integer] Total number of pages.
      #
      #   @param total_results [Integer] Total number of results across all pages.
    end
  end
end
