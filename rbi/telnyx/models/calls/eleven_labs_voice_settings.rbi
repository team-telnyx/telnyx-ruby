# typed: strong

module Telnyx
  module Models
    module Calls
      class ElevenLabsVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ElevenLabsVoiceSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        sig { params(api_key_ref: String).returns(T.attached_class) }
        def self.new(
          # The `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
          # with this integration.
          api_key_ref: nil
        )
        end

        sig { override.returns({ api_key_ref: String }) }
        def to_hash
        end
      end
    end
  end
end
