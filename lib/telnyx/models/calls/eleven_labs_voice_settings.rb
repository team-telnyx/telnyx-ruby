# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class ElevenLabsVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute api_key_ref
        #   The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        #   with this integration.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!method initialize(api_key_ref: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ElevenLabsVoiceSettings} for more details.
        #
        #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev
      end
    end
  end
end
