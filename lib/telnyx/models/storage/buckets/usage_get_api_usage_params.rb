# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::Usage#get_api_usage
        class UsageGetAPIUsageParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute filter
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[start_time], filter[end_time]
          #
          #   @return [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams::Filter]
          required :filter, -> { Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter }

          # @!method initialize(filter:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams} for more details.
          #
          #   @param filter [Telnyx::Models::Storage::Buckets::UsageGetAPIUsageParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[start_time]
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Filter < Telnyx::Internal::Type::BaseModel
            # @!attribute end_time
            #   The end time of the period to filter the usage (ISO microsecond format)
            #
            #   @return [Time]
            required :end_time, Time

            # @!attribute start_time
            #   The start time of the period to filter the usage (ISO microsecond format)
            #
            #   @return [Time]
            required :start_time, Time

            # @!method initialize(end_time:, start_time:)
            #   Consolidated filter parameter (deepObject style). Originally:
            #   filter[start_time], filter[end_time]
            #
            #   @param end_time [Time] The end time of the period to filter the usage (ISO microsecond format)
            #
            #   @param start_time [Time] The start time of the period to filter the usage (ISO microsecond format)
          end
        end
      end
    end
  end
end
