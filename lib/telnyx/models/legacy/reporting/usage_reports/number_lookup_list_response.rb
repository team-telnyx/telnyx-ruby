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
            #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data>, nil]
            optional :data,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data] }

            # @!attribute meta
            #
            #   @return [Telnyx::Models::Legacy::Reporting::UsageReports::StandardPaginationMeta, nil]
            optional :meta, -> { Telnyx::Legacy::Reporting::UsageReports::StandardPaginationMeta }

            # @!method initialize(data: nil, meta: nil)
            #   @param data [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data>]
            #   @param meta [Telnyx::Models::Legacy::Reporting::UsageReports::StandardPaginationMeta]

            class Data < Telnyx::Internal::Type::BaseModel
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
              #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result>, nil]
              optional :result,
                       -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result] }

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
              #   @param result [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result>] Array of usage records
              #
              #   @param start_date [Date] Start date of the report period
              #
              #   @param status [String] Current status of the report
              #
              #   @param updated_at [Time] Timestamp when the report was last updated

              class Result < Telnyx::Internal::Type::BaseModel
                # @!attribute aggregations
                #   List of aggregations by lookup type
                #
                #   @return [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result::Aggregation>, nil]
                optional :aggregations,
                         -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result::Aggregation] }

                # @!attribute record_type
                #   Record type identifier
                #
                #   @return [String, nil]
                optional :record_type, String

                # @!attribute user_id
                #   User ID
                #
                #   @return [String, nil]
                optional :user_id, String

                # @!method initialize(aggregations: nil, record_type: nil, user_id: nil)
                #   @param aggregations [Array<Telnyx::Models::Legacy::Reporting::UsageReports::NumberLookupListResponse::Data::Result::Aggregation>] List of aggregations by lookup type
                #
                #   @param record_type [String] Record type identifier
                #
                #   @param user_id [String] User ID

                class Aggregation < Telnyx::Internal::Type::BaseModel
                  # @!attribute currency
                  #   Currency code
                  #
                  #   @return [String, nil]
                  optional :currency, String

                  # @!attribute total_cost
                  #   Total cost for this aggregation
                  #
                  #   @return [Float, nil]
                  optional :total_cost, Float

                  # @!attribute total_dips
                  #   Total number of lookups performed
                  #
                  #   @return [Integer, nil]
                  optional :total_dips, Integer

                  # @!attribute type
                  #   Type of telco data lookup
                  #
                  #   @return [String, nil]
                  optional :type, String

                  # @!method initialize(currency: nil, total_cost: nil, total_dips: nil, type: nil)
                  #   @param currency [String] Currency code
                  #
                  #   @param total_cost [Float] Total cost for this aggregation
                  #
                  #   @param total_dips [Integer] Total number of lookups performed
                  #
                  #   @param type [String] Type of telco data lookup
                end
              end
            end
          end
        end
      end
    end
  end
end
