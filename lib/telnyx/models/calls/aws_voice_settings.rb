# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class AwsVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   Voice settings provider type
        #
        #   @return [Symbol, Telnyx::Models::Calls::AwsVoiceSettings::Type]
        required :type, enum: -> { Telnyx::Calls::AwsVoiceSettings::Type }

        # @!method initialize(type:)
        #   @param type [Symbol, Telnyx::Models::Calls::AwsVoiceSettings::Type] Voice settings provider type

        # Voice settings provider type
        #
        # @see Telnyx::Models::Calls::AwsVoiceSettings#type
        module Type
          extend Telnyx::Internal::Type::Enum

          AWS = :aws

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
