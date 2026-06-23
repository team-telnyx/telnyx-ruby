# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfileMetrics#list
    class MessagingProfileMetricListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute time_frame
      #   The time frame for metrics.
      #
      #   @return [Symbol, Telnyx::Models::MessagingMetricsTimeFrame, nil]
      optional :time_frame, enum: -> { Telnyx::MessagingMetricsTimeFrame }

      # @!method initialize(time_frame: nil, request_options: {})
      #   @param time_frame [Symbol, Telnyx::Models::MessagingMetricsTimeFrame] The time frame for metrics.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
