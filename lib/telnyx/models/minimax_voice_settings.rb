# frozen_string_literal: true

module Telnyx
  module Models
    class MinimaxVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::MinimaxVoiceSettings::Type]
      required :type, enum: -> { Telnyx::MinimaxVoiceSettings::Type }

      # @!attribute pitch
      #   Voice pitch adjustment. Default is 0.
      #
      #   @return [Integer, nil]
      optional :pitch, Integer

      # @!attribute speed
      #   Speech speed multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :speed, Float

      # @!attribute vol
      #   Speech volume multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :vol, Float

      # @!method initialize(type:, pitch: nil, speed: nil, vol: nil)
      #   @param type [Symbol, Telnyx::Models::MinimaxVoiceSettings::Type] Voice settings provider type
      #
      #   @param pitch [Integer] Voice pitch adjustment. Default is 0.
      #
      #   @param speed [Float] Speech speed multiplier. Default is 1.0.
      #
      #   @param vol [Float] Speech volume multiplier. Default is 1.0.

      # Voice settings provider type
      #
      # @see Telnyx::Models::MinimaxVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        MINIMAX = :minimax

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
