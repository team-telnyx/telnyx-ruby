# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#fetch_sync
      class MdrUsageReportFetchSyncParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute aggregation_type
        #   Type of aggregation to apply to the results.
        #
        #   @return [Symbol, Telnyx::Models::Reports::MdrUsageReportFetchSyncParams::AggregationType]
        required :aggregation_type, enum: -> { Telnyx::Reports::MdrUsageReportFetchSyncParams::AggregationType }

        # @!attribute end_date
        #   End of the date range filter (inclusive, ISO 8601).
        #
        #   @return [Time, nil]
        optional :end_date, Time

        # @!attribute profiles
        #   Filter results by profile.
        #
        #   @return [Array<String>, nil]
        optional :profiles, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #   Start of the date range filter (inclusive, ISO 8601).
        #
        #   @return [Time, nil]
        optional :start_date, Time

        # @!method initialize(aggregation_type:, end_date: nil, profiles: nil, start_date: nil, request_options: {})
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReportFetchSyncParams::AggregationType] Type of aggregation to apply to the results.
        #
        #   @param end_date [Time] End of the date range filter (inclusive, ISO 8601).
        #
        #   @param profiles [Array<String>] Filter results by profile.
        #
        #   @param start_date [Time] Start of the date range filter (inclusive, ISO 8601).
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Type of aggregation to apply to the results.
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
