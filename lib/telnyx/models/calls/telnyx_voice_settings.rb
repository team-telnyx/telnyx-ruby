# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TelnyxVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute voice_speed
        #   The voice speed to be used for the voice. The voice speed must be between 0.1
        #   and 2.0. Default value is 1.0.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(voice_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TelnyxVoiceSettings} for more details.
        #
        #   @param voice_speed [Float] The voice speed to be used for the voice. The voice speed must be between 0.1 an
      end
    end
  end
end
