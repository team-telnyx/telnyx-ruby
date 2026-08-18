# frozen_string_literal: true

module Telnyx
  module Models
    class RimeVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::RimeVoiceSettings::Type]
      required :type, enum: -> { Telnyx::RimeVoiceSettings::Type }

      # @!attribute api_key_ref
      #   The `identifier` for an integration secret
      #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
      #   that refers to your Rime API key. Only required when using your own Rime
      #   account.
      #
      #   @return [String, nil]
      optional :api_key_ref, String

      # @!attribute voice_speed
      #   Speech speed multiplier. Default is 1.0.
      #
      #   @return [Float, nil]
      optional :voice_speed, Float

      # @!method initialize(type:, api_key_ref: nil, voice_speed: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RimeVoiceSettings} for more details.
      #
      #   @param type [Symbol, Telnyx::Models::RimeVoiceSettings::Type] Voice settings provider type
      #
      #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev
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
