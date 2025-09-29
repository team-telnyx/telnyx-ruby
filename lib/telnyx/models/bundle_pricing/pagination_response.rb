# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      class PaginationResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   The current page number.
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #   The number of results per page.
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #   Total number of pages from the results.
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #   Total number of results returned.
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   @param page_number [Integer] The current page number.
        #
        #   @param page_size [Integer] The number of results per page.
        #
        #   @param total_pages [Integer] Total number of pages from the results.
        #
        #   @param total_results [Integer] Total number of results returned.
      end
    end
  end
end
