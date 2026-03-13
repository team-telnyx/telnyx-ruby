# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#retrieve_metrics
    class MessagingProfileRetrieveMetricsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute time_frame
      #   The time frame for metrics.
      #
      #   @return [Symbol, Telnyx::Models::MessagingProfileRetrieveMetricsParams::TimeFrame, nil]
      optional :time_frame, enum: -> { Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame }

      # @!method initialize(id:, time_frame: nil, request_options: {})
      #   @param id [String]
      #
      #   @param time_frame [Symbol, Telnyx::Models::MessagingProfileRetrieveMetricsParams::TimeFrame] The time frame for metrics.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The time frame for metrics.
      module TimeFrame
        extend Telnyx::Internal::Type::Enum

        TIME_FRAME_1_H = :"1h"
        TIME_FRAME_3_H = :"3h"
        TIME_FRAME_24_H = :"24h"
        TIME_FRAME_3_D = :"3d"
        TIME_FRAME_7_D = :"7d"
        TIME_FRAME_30_D = :"30d"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
