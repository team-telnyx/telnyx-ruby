# frozen_string_literal: true

module Telnyx
  module Models
    class InworldVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::InworldVoiceSettings::Type]
      required :type, enum: -> { Telnyx::InworldVoiceSettings::Type }

      # @!attribute delivery_mode
      #   Controls the expressiveness and consistency of the Inworld `TTS2` model's speech
      #   synthesis. `STABLE` favors consistent, predictable output, `CREATIVE` allows
      #   more expressive variation, and `BALANCED` sits in between. Optional and only
      #   supported by `TTS2`; when omitted, the provider default applies.
      #
      #   @return [Symbol, Telnyx::Models::InworldVoiceSettings::DeliveryMode, nil]
      optional :delivery_mode, enum: -> { Telnyx::InworldVoiceSettings::DeliveryMode }

      # @!method initialize(type:, delivery_mode: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InworldVoiceSettings} for more details.
      #
      #   @param type [Symbol, Telnyx::Models::InworldVoiceSettings::Type] Voice settings provider type
      #
      #   @param delivery_mode [Symbol, Telnyx::Models::InworldVoiceSettings::DeliveryMode] Controls the expressiveness and consistency of the Inworld `TTS2` model's speech

      # Voice settings provider type
      #
      # @see Telnyx::Models::InworldVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        INWORLD = :inworld

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls the expressiveness and consistency of the Inworld `TTS2` model's speech
      # synthesis. `STABLE` favors consistent, predictable output, `CREATIVE` allows
      # more expressive variation, and `BALANCED` sits in between. Optional and only
      # supported by `TTS2`; when omitted, the provider default applies.
      #
      # @see Telnyx::Models::InworldVoiceSettings#delivery_mode
      module DeliveryMode
        extend Telnyx::Internal::Type::Enum

        STABLE = :STABLE
        BALANCED = :BALANCED
        CREATIVE = :CREATIVE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
