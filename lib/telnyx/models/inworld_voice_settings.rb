# frozen_string_literal: true

module Telnyx
  module Models
    class InworldVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::InworldVoiceSettings::Type]
      required :type, enum: -> { Telnyx::InworldVoiceSettings::Type }

      # @!method initialize(type:)
      #   @param type [Symbol, Telnyx::Models::InworldVoiceSettings::Type] Voice settings provider type

      # Voice settings provider type
      #
      # @see Telnyx::Models::InworldVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        INWORLD = :inworld

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
