# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#list
      class MdrUsageReportListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @return [Telnyx::Models::Reports::MdrUsageReportListParams::Page, nil]
        optional :page, -> { Telnyx::Reports::MdrUsageReportListParams::Page }

        # @!method initialize(page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Reports::MdrUsageReportListParams} for more details.
        #
        #   @param page [Telnyx::Models::Reports::MdrUsageReportListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Page < Telnyx::Internal::Type::BaseModel
          # @!attribute number
          #   Page number
          #
          #   @return [Integer, nil]
          optional :number, Integer

          # @!attribute size
          #   Size of the page
          #
          #   @return [Integer, nil]
          optional :size, Integer

          # @!method initialize(number: nil, size: nil)
          #   Consolidated page parameter (deepObject style). Originally: page[number],
          #   page[size]
          #
          #   @param number [Integer] Page number
          #
          #   @param size [Integer] Size of the page
        end
      end
    end
  end
end
