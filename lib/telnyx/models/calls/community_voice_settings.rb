# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class CommunityVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute api_key_ref
        #   The `identifier` of an integration secret that holds your key for the engine.
        #   See
        #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   for details.
        #
        #   @return [String]
        required :api_key_ref, String

        # @!method initialize(api_key_ref:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::CommunityVoiceSettings} for more details.
        #
        #   Settings for a community text-to-speech engine voice (`<EngineName>.<VoiceId>`).
        #   `api_key_ref` is required. Every other key is a setting the engine declares in
        #   its `voice_settings_schema`, and is passed to the engine as sent. See the
        #   [Community TTS engines guide](/docs/voice/tts/community-engines).
        #
        #   @param api_key_ref [String] The `identifier` of an integration secret that holds your key for the engine. Se
      end
    end
  end
end
