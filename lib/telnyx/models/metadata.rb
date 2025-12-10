# frozen_string_literal: true

module Telnyx
  module Models
    class Metadata < Telnyx::Internal::Type::BaseModel
      # @!attribute page_number
      #   Current Page based on pagination settings (included when defaults are used.)
      #
      #   @return [Float]
      required :page_number, Float

      # @!attribute total_pages
      #   Total number of pages based on pagination settings
      #
      #   @return [Float]
      required :total_pages, Float

      # @!attribute page_size
      #   Number of results to return per page based on pagination settings (included when
      #   defaults are used.)
      #
      #   @return [Float, nil]
      optional :page_size, Float

      # @!attribute total_results
      #   Total number of results
      #
      #   @return [Float, nil]
      optional :total_results, Float

      # @!method initialize(page_number:, total_pages:, page_size: nil, total_results: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Metadata}
      #   for more details.
      #
      #   @param page_number [Float] Current Page based on pagination settings (included when defaults are used.)
      #
      #   @param total_pages [Float] Total number of pages based on pagination settings
      #
      #   @param page_size [Float] Number of results to return per page based on pagination settings (included when
      #
      #   @param total_results [Float] Total number of results
    end
  end
end
