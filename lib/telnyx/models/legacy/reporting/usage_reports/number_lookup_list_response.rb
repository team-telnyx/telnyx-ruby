# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup#list
          class NumberLookupListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::StandardPaginationMeta, nil]
            optional :meta, -> { Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::UsageReports::StandardPaginationMeta]
          end
        end
      end
    end
  end
end
