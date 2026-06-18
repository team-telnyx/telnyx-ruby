# frozen_string_literal: true

module Telnyx
  module Models
    # The time frame for metrics aggregation.
    module MessagingMetricsTimeFrame
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
