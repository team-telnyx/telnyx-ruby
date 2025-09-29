# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UsageReports#list
    class UsageReportListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Hash{Symbol=>Object}>, nil]
      optional :data,
               Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

      # @!attribute meta
      #
      #   @return [Telnyx::Models::UsageReportListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::UsageReportListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Hash{Symbol=>Object}>]
      #   @param meta [Telnyx::Models::UsageReportListResponse::Meta]

      # @see Telnyx::Models::UsageReportListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   Selected page number.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Records per single page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #   Total number of pages.
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #   Total number of results.
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer] Selected page number.
        #
        #   @param page_size [Integer] Records per single page
        #
        #   @param total_pages [Integer] Total number of pages.
        #
        #   @param total_results [Integer] Total number of results.
      end
    end
  end
end
