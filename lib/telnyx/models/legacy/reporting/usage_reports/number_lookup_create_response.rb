# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup#create
          class NumberLookupCreateResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #   Telco data usage report response
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse, nil]
            optional :data, -> { Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse }

            # @!method initialize(data: nil)
            #   @param data [Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageReportResponse] Telco data usage report response
          end
        end
      end
    end
  end
end
