# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::CdrUsageReports#fetch_sync
      class CdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute aggregation_type
        #
        #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::AggregationType]
        required :aggregation_type, enum: -> { Telnyx::Reports::CdrUsageReportFetchSyncParams::AggregationType }

        # @!attribute product_breakdown
        #
        #   @return [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown]
        required :product_breakdown, enum: -> { Telnyx::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown }

        # @!attribute connections
        #
        #   @return [Array<Float>, nil]
        optional :connections, Telnyx::Internal::Type::ArrayOf[Float]

        # @!attribute end_date
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute start_date
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!method initialize(aggregation_type:, product_breakdown:, connections: nil, end_date: nil, start_date: nil, request_options: {})
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::AggregationType]
        #   @param product_breakdown [Symbol, Telnyx::Models::Reports::CdrUsageReportFetchSyncParams::ProductBreakdown]
        #   @param connections [Array<Float>]
        #   @param end_date [Time]
        #   @param start_date [Time]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module AggregationType
          extend Telnyx::Internal::Type::Enum

          NO_AGGREGATION = :NO_AGGREGATION
          CONNECTION = :CONNECTION
          TAG = :TAG
          BILLING_GROUP = :BILLING_GROUP

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
