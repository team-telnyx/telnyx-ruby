# frozen_string_literal: true

module Telnyx
  module Models
    # Audio sampling rate.
    module StreamBidirectionalSamplingRate
      extend Telnyx::Internal::Type::Enum

      STREAM_BIDIRECTIONAL_SAMPLING_RATE_8000 = 8000
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_16000 = 16_000
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_22050 = 22_050
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_24000 = 24_000
      STREAM_BIDIRECTIONAL_SAMPLING_RATE_48000 = 48_000

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
