# typed: strong

module Telnyx
  module Models
    module Calls
      class CommunityVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::CommunityVoiceSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # The `identifier` of an integration secret that holds your key for the engine.
        # See
        # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # for details.
        sig { returns(String) }
        attr_accessor :api_key_ref

        # Settings for a community text-to-speech engine voice (`<EngineName>.<VoiceId>`).
        # `api_key_ref` is required. Every other key is a setting the engine declares in
        # its `voice_settings_schema`, and is passed to the engine as sent. See the
        # [Community TTS engines guide](/docs/voice/tts/community-engines).
        sig { params(api_key_ref: String).returns(T.attached_class) }
        def self.new(
          # The `identifier` of an integration secret that holds your key for the engine.
          # See
          # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # for details.
          api_key_ref:
        )
        end

        sig { override.returns({ api_key_ref: String }) }
        def to_hash
        end
      end
    end
  end
end
