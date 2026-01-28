# frozen_string_literal: true

module Telnyx
  module Models
    class Metadata < Telnyx::Internal::Type::BaseModel
      # @!attribute page_number
      #   Current Page based on pagination settings (included when defaults are used.)
      #
      #   @return [Integer]
      required :page_number, Integer

      # @!attribute total_pages
      #   Total number of pages based on pagination settings
      #
      #   @return [Integer]
      required :total_pages, Integer

      # @!attribute page_size
      #   Number of results to return per page based on pagination settings (included when
      #   defaults are used.)
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute total_results
      #   Total number of results
      #
      #   @return [Integer, nil]
      optional :total_results, Integer

      # @!method initialize(page_number:, total_pages:, page_size: nil, total_results: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Metadata}
      #   for more details.
      #
      #   @param page_number [Integer] Current Page based on pagination settings (included when defaults are used.)
      #
      #   @param total_pages [Integer] Total number of pages based on pagination settings
      #
      #   @param page_size [Integer] Number of results to return per page based on pagination settings (included when
      #
      #   @param total_results [Integer] Total number of results
    end
  end
end
