# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class AssemblyAIVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   Voice settings provider type
        #
        #   @return [Symbol, Telnyx::Models::Calls::AssemblyAIVoiceSettings::Type]
        required :type, enum: -> { Telnyx::Calls::AssemblyAIVoiceSettings::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, Telnyx::Models::Calls::AssemblyAIVoiceSettings::Type] Voice settings provider type

        # Voice settings provider type
        #
        # @see Telnyx::Models::Calls::AssemblyAIVoiceSettings#type
        module Type
          extend Telnyx::Internal::Type::Enum

          ASSEMBLYAI = :assemblyai

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
