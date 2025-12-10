# frozen_string_literal: true

module Telnyx
  module Models
    # Audio sampling rate.
    module StreamBidirectionalSamplingRate
      extend Telnyx::Internal::Type::Enum

      RATE_8000 = 8000
      RATE_16000 = 16_000
      RATE_22050 = 22_050
      RATE_24000 = 24_000
      RATE_48000 = 48_000

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
