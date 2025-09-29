# frozen_string_literal: true

module Telnyx
  module Models
    module Reports
      # @see Telnyx::Resources::Reports::MdrUsageReports#create
      class MdrUsageReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute aggregation_type
        #
        #   @return [Symbol, Telnyx::Models::Reports::MdrUsageReportCreateParams::AggregationType]
        required :aggregation_type, enum: -> { Telnyx::Reports::MdrUsageReportCreateParams::AggregationType }

        # @!attribute end_date
        #
        #   @return [Time]
        required :end_date, Time

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute profiles
        #
        #   @return [String, nil]
        optional :profiles, String

        # @!method initialize(aggregation_type:, end_date:, start_date:, profiles: nil, request_options: {})
        #   @param aggregation_type [Symbol, Telnyx::Models::Reports::MdrUsageReportCreateParams::AggregationType]
        #   @param end_date [Time]
        #   @param start_date [Time]
        #   @param profiles [String]
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
