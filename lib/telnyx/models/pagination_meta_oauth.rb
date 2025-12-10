# frozen_string_literal: true

module Telnyx
  module Models
    class PaginationMetaOAuth < Telnyx::Internal::Type::BaseModel
      # @!attribute page_number
      #   Current page number
      #
      #   @return [Integer]
      required :page_number, Integer

      # @!attribute total_pages
      #   Total number of pages
      #
      #   @return [Integer]
      required :total_pages, Integer

      # @!attribute page_size
      #   Number of items per page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute total_results
      #   Total number of results
      #
      #   @return [Integer, nil]
      optional :total_results, Integer

      # @!method initialize(page_number:, total_pages:, page_size: nil, total_results: nil)
      #   @param page_number [Integer] Current page number
      #
      #   @param total_pages [Integer] Total number of pages
      #
      #   @param page_size [Integer] Number of items per page
      #
      #   @param total_results [Integer] Total number of results
    end
  end
end
