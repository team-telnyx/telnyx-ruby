# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TelnyxVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   Voice settings provider type
        #
        #   @return [Symbol, Telnyx::Models::Calls::TelnyxVoiceSettings::Type]
        required :type, enum: -> { Telnyx::Calls::TelnyxVoiceSettings::Type }

        # @!attribute voice_speed
        #   The voice speed to be used for the voice. Telnyx `Ultra` voices accept values
        #   from 0.6 to 1.5; values outside that range are rejected by the synthesis engine.
        #   `Qwen3TTS` and `KokoroTTS` accept the field but do not apply it. Default value
        #   is 1.0. Not supported for `Telnyx.Bayan.*` or `Telnyx.Sukhan.*` voices.
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(type:, voice_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TelnyxVoiceSettings} for more details.
        #
        #   @param type [Symbol, Telnyx::Models::Calls::TelnyxVoiceSettings::Type] Voice settings provider type
        #
        #   @param voice_speed [Float] The voice speed to be used for the voice. Telnyx `Ultra` voices accept values fr

        # Voice settings provider type
        #
        # @see Telnyx::Models::Calls::TelnyxVoiceSettings#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TELNYX = :telnyx

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
