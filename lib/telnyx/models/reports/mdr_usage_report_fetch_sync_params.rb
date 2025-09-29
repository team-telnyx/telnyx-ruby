# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#fetch_sync
      class MdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute aggregation_type
        #
        #   @return [Symbol, Telnyx::Models::Reports::MdrUsageReportFetchSyncParams::AggregationType]
        required :aggregation_type, enum: -> { Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType }

        # @!attribute end_date
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute profiles
        #
        #   @return [Array<String>, nil]
        optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!method initialize(aggregation_type:, end_date: nil, profiles: nil, start_date: nil, request_options: {})
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReportFetchSyncParams::AggregationType]
        #   @param end_date [Time]
        #   @param profiles [Array<String>]
        #   @param start_date [Time]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module AggregationType
          extend Telnyx::Internal::Type::Enum

          NO_AGGREGATION = :NO_AGGREGATION
          PROFILE = :PROFILE
          TAGS = :TAGS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
