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
      #   @return [Symbol, Telnyx::Models::MessagingProfileMetricListParams::TimeFrame, nil]
      optional :time_frame, enum: -> { Telnyx::MessagingProfileMetricListParams::TimeFrame }

      # @!method initialize(time_frame: nil, request_options: {})
      #   @param time_frame [Symbol, Telnyx::Models::MessagingProfileMetricListParams::TimeFrame] The time frame for metrics.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The time frame for metrics.
      module TimeFrame
        extend Telnyx::Internal::Type::Enum

        TIME_FRAME_1H = :"1h"
        TIME_FRAME_3H = :"3h"
        TIME_FRAME_24H = :"24h"
        TIME_FRAME_3D = :"3d"
        TIME_FRAME_7D = :"7d"
        TIME_FRAME_30D = :"30d"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
