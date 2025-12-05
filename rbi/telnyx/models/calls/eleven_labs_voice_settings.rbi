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

        # Voice settings provider type
        sig { returns(Telnyx::Calls::ElevenLabsVoiceSettings::Type::OrSymbol) }
        attr_accessor :type

        # The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        sig do
          params(
            type: Telnyx::Calls::ElevenLabsVoiceSettings::Type::OrSymbol,
            api_key_ref: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Voice settings provider type
          type:,
          # The `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
          # with this integration.
          api_key_ref: nil
        )
        end

        sig do
          override.returns(
            {
              type: Telnyx::Calls::ElevenLabsVoiceSettings::Type::OrSymbol,
              api_key_ref: String
            }
          )
        end
        def to_hash
        end

        # Voice settings provider type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ElevenLabsVoiceSettings::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ELEVENLABS =
            T.let(
              :elevenlabs,
              Telnyx::Calls::ElevenLabsVoiceSettings::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ElevenLabsVoiceSettings::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
