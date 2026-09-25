# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class SonioxVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   Voice settings provider type
        #
        #   @return [Symbol, Telnyx::Models::Calls::SonioxVoiceSettings::Type]
        required :type, enum: -> { Telnyx::Calls::SonioxVoiceSettings::Type }

        # @!attribute reduce_silence
        #   Shortens the pauses between words.
        #
        #   @return [Boolean, nil]
        optional :reduce_silence, Telnyx::Internal::Type::Boolean

        # @!attribute speed
        #   Speaking rate. 1.0 is normal speed.
        #
        #   @return [Float, nil]
        optional :speed, Float

        # @!method initialize(type:, reduce_silence: nil, speed: nil)
        #   @param type [Symbol, Telnyx::Models::Calls::SonioxVoiceSettings::Type] Voice settings provider type
        #
        #   @param reduce_silence [Boolean] Shortens the pauses between words.
        #
        #   @param speed [Float] Speaking rate. 1.0 is normal speed.

        # Voice settings provider type
        #
        # @see Telnyx::Models::Calls::SonioxVoiceSettings#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SONIOX = :soniox

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
