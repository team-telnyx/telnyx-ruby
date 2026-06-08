# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::CdrUsageReports#fetch_sync
      class CdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute aggregation_type
        #   Type of aggregation to apply to the results.
        #
        #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::AggregationType]
        required :aggregation_type, enum: -> { Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType }

        # @!attribute product_breakdown
        #   Filter results by product breakdown.
        #
        #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown]
        required :product_breakdown, enum: -> { Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown }

        # @!attribute connections
        #   Filter results by connection.
        #
        #   @return [Array<Float>, nil]
        optional :connections, Telnyx::Internal::Type::ArrayOf[Float]

        # @!attribute end_date
        #   End of the date range filter (inclusive, ISO 8601).
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute start_date
        #   Start of the date range filter (inclusive, ISO 8601).
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!method initialize(aggregation_type:, product_breakdown:, connections: nil, end_date: nil, start_date: nil, request_options: {})
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::AggregationType] Type of aggregation to apply to the results.
        #
        #   @param product_breakdown [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown] Filter results by product breakdown.
        #
        #   @param connections [Array<Float>] Filter results by connection.
        #
        #   @param end_date [Time] End of the date range filter (inclusive, ISO 8601).
        #
        #   @param start_date [Time] Start of the date range filter (inclusive, ISO 8601).
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Type of aggregation to apply to the results.
        module AggregationType
          extend Telnyx::Internal::Type::Enum

          NO_AGGREGATION = :NO_AGGREGATION
          CONNECTION = :CONNECTION
          TAG = :TAG
          BILLING_GROUP = :BILLING_GROUP

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter results by product breakdown.
        module ProductBreakdown
          extend Telnyx::Internal::Type::Enum

          NO_BREAKDOWN = :NO_BREAKDOWN
          DID_VS_TOLL_FREE = :DID_VS_TOLL_FREE
          COUNTRY = :COUNTRY
          DID_VS_TOLL_FREE_PER_COUNTRY = :DID_VS_TOLL_FREE_PER_COUNTRY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
