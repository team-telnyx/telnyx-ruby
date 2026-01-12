# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Voice#list
          class CdrUsageReportResponseLegacy < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Identifies the resource
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute aggregation_type
            #   Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            #
            #   @return [Integer, nil]
            optional :aggregation_type, Integer

            # @!attribute connections
            #
            #   @return [Array<String>, nil]
            optional :connections, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute end_time
            #
            #   @return [Time, nil]
            optional :end_time, Time

            # @!attribute product_breakdown
            #   Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            #   vs Toll-free per Country = 3
            #
            #   @return [Integer, nil]
            optional :product_breakdown, Integer

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute report_url
            #
            #   @return [String, nil]
            optional :report_url, String

            # @!attribute result
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :result, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute start_time
            #
            #   @return [Time, nil]
            optional :start_time, Time

            # @!attribute status
            #   Status of the report: Pending = 1, Complete = 2, Failed = 3, Expired = 4
            #
            #   @return [Integer, nil]
            optional :status, Integer

            # @!attribute updated_at
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, aggregation_type: nil, connections: nil, created_at: nil, end_time: nil, product_breakdown: nil, record_type: nil, report_url: nil, result: nil, start_time: nil, status: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Legacy::Reporting::UsageReports::CdrUsageReportResponseLegacy}
            #   for more details.
            #
            #   Legacy V2 CDR usage report response
            #
            #   @param id [String] Identifies the resource
            #
            #   @param aggregation_type [Integer] Aggregation type: All = 0, By Connections = 1, By Tags = 2, By Billing Group = 3
            #
            #   @param connections [Array<String>]
            #
            #   @param created_at [Time]
            #
            #   @param end_time [Time]
            #
            #   @param product_breakdown [Integer] Product breakdown type: No breakdown = 0, DID vs Toll-free = 1, Country = 2, DID
            #
            #   @param record_type [String]
            #
            #   @param report_url [String]
            #
            #   @param result [Hash{Symbol=>Object}]
            #
            #   @param start_time [Time]
            #
            #   @param status [Integer] Status of the report: Pending = 1, Complete = 2, Failed = 3, Expired = 4
            #
            #   @param updated_at [Time]
          end
        end
      end
    end
  end
end
