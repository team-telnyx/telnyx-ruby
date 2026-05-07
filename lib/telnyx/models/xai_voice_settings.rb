# frozen_string_literal: true

module Telnyx
  module Models
    class XaiVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::XaiVoiceSettings::Type]
      required :type, enum: -> { Telnyx::XaiVoiceSettings::Type }

      # @!attribute language
      #   Language code, or `auto` to detect automatically.
      #
      #   @return [String, nil]
      optional :language, String

      # @!method initialize(type:, language: nil)
      #   @param type [Symbol, Telnyx::Models::XaiVoiceSettings::Type] Voice settings provider type
      #
      #   @param language [String] Language code, or `auto` to detect automatically.

      # Voice settings provider type
      #
      # @see Telnyx::Models::XaiVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        XAI = :xai

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
