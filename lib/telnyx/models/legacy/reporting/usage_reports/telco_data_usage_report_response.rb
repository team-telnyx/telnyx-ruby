# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataUsageReportResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier for the report
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute aggregation_type
            #   Type of aggregation used in the report
            #
            #   @return [String, nil]
            optional :aggregation_type, String

            # @!attribute created_at
            #   Timestamp when the report was created
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute end_date
            #   End date of the report period
            #
            #   @return [Date, nil]
            optional :end_date, Date

            # @!attribute managed_accounts
            #   List of managed account IDs included in the report
            #
            #   @return [Array<String>, nil]
            optional :managed_accounts, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute record_type
            #   Record type identifier
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute report_url
            #   URL to download the complete report
            #
            #   @return [String, nil]
            optional :report_url, String

            # @!attribute result
            #   Array of usage records
            #
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageRecord>, nil]
            optional :result,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Legacy::Reporting::UsageReports::TelcoDataUsageRecord] }

            # @!attribute start_date
            #   Start date of the report period
            #
            #   @return [Date, nil]
            optional :start_date, Date

            # @!attribute status
            #   Current status of the report
            #
            #   @return [String, nil]
            optional :status, String

            # @!attribute updated_at
            #   Timestamp when the report was last updated
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, aggregation_type: nil, created_at: nil, end_date: nil, managed_accounts: nil, record_type: nil, report_url: nil, result: nil, start_date: nil, status: nil, updated_at: nil)
            #   Telco data usage report response
            #
            #   @param id [String] Unique identifier for the report
            #
            #   @param aggregation_type [String] Type of aggregation used in the report
            #
            #   @param created_at [Time] Timestamp when the report was created
            #
            #   @param end_date [Date] End date of the report period
            #
            #   @param managed_accounts [Array<String>] List of managed account IDs included in the report
            #
            #   @param record_type [String] Record type identifier
            #
            #   @param report_url [String] URL to download the complete report
            #
            #   @param result [Array<Telnyx::Models::Legacy::Reporting::UsageReports::TelcoDataUsageRecord>] Array of usage records
            #
            #   @param start_date [Date] Start date of the report period
            #
            #   @param status [String] Current status of the report
            #
            #   @param updated_at [Time] Timestamp when the report was last updated
          end
        end
      end
    end
  end
end
