# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#list
      class MdrUsageReportListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Reports::MdrUsageReport>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Reports::MdrUsageReport] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Reports::PaginationMetaReporting, nil]
        optional :meta, -> { Telnyx::Reports::PaginationMetaReporting }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Reports::MdrUsageReport>]
        #   @param meta [Telnyx::Models::Reports::PaginationMetaReporting]
      end
    end
  end
end
