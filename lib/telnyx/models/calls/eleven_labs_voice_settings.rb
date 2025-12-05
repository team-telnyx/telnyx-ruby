# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class ElevenLabsVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #   Voice settings provider type
        #
        #   @return [Symbol, Telnyx::Models::Calls::ElevenLabsVoiceSettings::Type]
        required :type, enum: -> { Telnyx::Calls::ElevenLabsVoiceSettings::Type }

        # @!attribute api_key_ref
        #   The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        #   with this integration.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!method initialize(type:, api_key_ref: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ElevenLabsVoiceSettings} for more details.
        #
        #   @param type [Symbol, Telnyx::Models::Calls::ElevenLabsVoiceSettings::Type] Voice settings provider type
        #
        #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev

        # Voice settings provider type
        #
        # @see Telnyx::Models::Calls::ElevenLabsVoiceSettings#type
        module Type
          extend Telnyx::Internal::Type::Enum

          ELEVENLABS = :elevenlabs

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
