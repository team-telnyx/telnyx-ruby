# frozen_string_literal: true

module Telnyx
  module Models
    class RimeVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::RimeVoiceSettings::Type]
      required :type, enum: -> { Telnyx::RimeVoiceSettings::Type }

      # @!attribute voice_speed
      #   Speech speed multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :voice_speed, Float

      # @!method initialize(type:, voice_speed: nil)
      #   @param type [Symbol, Telnyx::Models::RimeVoiceSettings::Type] Voice settings provider type
      #
      #   @param voice_speed [Float] Speech speed multiplier. Default is 1.0.

      # Voice settings provider type
      #
      # @see Telnyx::Models::RimeVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        RIME = :rime

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
