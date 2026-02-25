# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionSpeakParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The text or SSML to be converted into speech. There is a 3,000 character limit.
        sig { returns(String) }
        attr_accessor :payload

        # Specifies the voice used in speech synthesis.
        #
        # - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
        #   the provider will give default values for voice_id and model_id.
        #
        #   **Supported Providers:**
        #
        # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
        #   voices, which provide more realistic, human-like speech, append `-Neural` to
        #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
        #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
        #   for compatibility.
        # - **Azure:** Use `Azure.<VoiceId>` (e.g., `Azure.en-CA-ClaraNeural`,
        #   `Azure.en-US-BrianMultilingualNeural`,
        #   `Azure.en-US-Ava:DragonHDLatestNeural`). For a complete list of voices, go to
        #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery). Use
        #   `voice_settings` to configure custom deployments, regions, or API keys.
        # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
        #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
        #   integration identifier secret in
        #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
        #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   for details. Check
        #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>` (e.g., `Telnyx.KokoroTTS.af`).
        #   Use `voice_settings` to configure voice_speed and other synthesis parameters.
        # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
        #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
        #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Use `voice_settings`
        #   to configure speed, volume, pitch, and language_boost.
        # - **Rime:** Use `Rime.<model_id>.<voice_id>` (e.g., `Rime.Arcana.cove`).
        #   Supported model_ids: `Arcana`, `Mist`. Use `voice_settings` to configure
        #   voice_speed.
        # - **Resemble:** Use `Resemble.Turbo.<voice_id>` (e.g.,
        #   `Resemble.Turbo.my_voice`). Only `Turbo` model is supported. Use
        #   `voice_settings` to configure precision, sample_rate, and format.
        #
        # For service_level basic, you may define the gender of the speaker (male or
        # female).
        sig { returns(String) }
        attr_accessor :voice

        # Call Control IDs of participants who will hear the spoken text. When empty all
        # participants will hear the spoken text.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # The language you want spoken. This parameter is ignored when a `Polly.*` voice
        # is specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionSpeakParams::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Conferences::ActionSpeakParams::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The type of the provided payload. The payload can either be plain text, or
        # Speech Synthesis Markup Language (SSML).
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionSpeakParams::PayloadType::OrSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Telnyx::Conferences::ActionSpeakParams::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(
            T.nilable(Telnyx::Conferences::ActionSpeakParams::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::Conferences::ActionSpeakParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        # The settings associated with the voice selected
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings,
                Telnyx::Calls::TelnyxVoiceSettings,
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::MinimaxVoiceSettings,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble
              )
            )
          )
        end
        attr_reader :voice_settings

        sig do
          params(
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::MinimaxVoiceSettings::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::OrHash
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            payload: String,
            voice: String,
            call_control_ids: T::Array[String],
            command_id: String,
            language:
              Telnyx::Conferences::ActionSpeakParams::Language::OrSymbol,
            payload_type:
              Telnyx::Conferences::ActionSpeakParams::PayloadType::OrSymbol,
            region: Telnyx::Conferences::ActionSpeakParams::Region::OrSymbol,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::MinimaxVoiceSettings::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime::OrHash,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The text or SSML to be converted into speech. There is a 3,000 character limit.
          payload:,
          # Specifies the voice used in speech synthesis.
          #
          # - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
          #   the provider will give default values for voice_id and model_id.
          #
          #   **Supported Providers:**
          #
          # - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
          #   voices, which provide more realistic, human-like speech, append `-Neural` to
          #   the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
          #   [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
          #   for compatibility.
          # - **Azure:** Use `Azure.<VoiceId>` (e.g., `Azure.en-CA-ClaraNeural`,
          #   `Azure.en-US-BrianMultilingualNeural`,
          #   `Azure.en-US-Ava:DragonHDLatestNeural`). For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery). Use
          #   `voice_settings` to configure custom deployments, regions, or API keys.
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
          #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
          #   integration identifier secret in
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
          #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   for details. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>` (e.g., `Telnyx.KokoroTTS.af`).
          #   Use `voice_settings` to configure voice_speed and other synthesis parameters.
          # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
          #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
          #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Use `voice_settings`
          #   to configure speed, volume, pitch, and language_boost.
          # - **Rime:** Use `Rime.<model_id>.<voice_id>` (e.g., `Rime.Arcana.cove`).
          #   Supported model_ids: `Arcana`, `Mist`. Use `voice_settings` to configure
          #   voice_speed.
          # - **Resemble:** Use `Resemble.Turbo.<voice_id>` (e.g.,
          #   `Resemble.Turbo.my_voice`). Only `Turbo` model is supported. Use
          #   `voice_settings` to configure precision, sample_rate, and format.
          #
          # For service_level basic, you may define the gender of the speaker (male or
          # female).
          voice:,
          # Call Control IDs of participants who will hear the spoken text. When empty all
          # participants will hear the spoken text.
          call_control_ids: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          # The settings associated with the voice selected
          voice_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              payload: String,
              voice: String,
              call_control_ids: T::Array[String],
              command_id: String,
              language:
                Telnyx::Conferences::ActionSpeakParams::Language::OrSymbol,
              payload_type:
                Telnyx::Conferences::ActionSpeakParams::PayloadType::OrSymbol,
              region: Telnyx::Conferences::ActionSpeakParams::Region::OrSymbol,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  Telnyx::Calls::AwsVoiceSettings,
                  Telnyx::MinimaxVoiceSettings,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The language you want spoken. This parameter is ignored when a `Polly.*` voice
        # is specified.
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionSpeakParams::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARB =
            T.let(
              :arb,
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          CMN_CN =
            T.let(
              :"cmn-CN",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-GB",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-DE",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_GB_WLS =
            T.let(
              :"en-GB-WLS",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-ES",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-MX",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-US",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-FR",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-IN",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-IS",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-IT",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-JP",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-NO",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-NL",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-PL",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-RO",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-RU",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-TR",
              Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionSpeakParams::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of the provided payload. The payload can either be plain text, or
        # Speech Synthesis Markup Language (SSML).
        module PayloadType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionSpeakParams::PayloadType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Telnyx::Conferences::ActionSpeakParams::PayloadType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              Telnyx::Conferences::ActionSpeakParams::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionSpeakParams::PayloadType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionSpeakParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Conferences::ActionSpeakParams::Region::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Conferences::ActionSpeakParams::Region::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Conferences::ActionSpeakParams::Region::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::Conferences::ActionSpeakParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionSpeakParams::Region::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The settings associated with the voice selected
        module VoiceSettings
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings,
                Telnyx::Calls::TelnyxVoiceSettings,
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::MinimaxVoiceSettings,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime,
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble
              )
            end

          class Azure < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # The `identifier` for an integration secret that refers to your Azure Speech API
            # key.
            sig { returns(T.nilable(String)) }
            attr_reader :api_key_ref

            sig { params(api_key_ref: String).void }
            attr_writer :api_key_ref

            # The deployment ID for a custom Azure neural voice.
            sig { returns(T.nilable(String)) }
            attr_reader :deployment_id

            sig { params(deployment_id: String).void }
            attr_writer :deployment_id

            # Audio effect to apply.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::OrSymbol
                )
              )
            end
            attr_reader :effect

            sig do
              params(
                effect:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::OrSymbol
              ).void
            end
            attr_writer :effect

            # Voice gender filter.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::OrSymbol
                )
              )
            end
            attr_reader :gender

            sig do
              params(
                gender:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::OrSymbol
              ).void
            end
            attr_writer :gender

            # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            # when using a custom API key.
            sig { returns(T.nilable(String)) }
            attr_reader :region

            sig { params(region: String).void }
            attr_writer :region

            sig do
              params(
                api_key_ref: String,
                deployment_id: String,
                effect:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::OrSymbol,
                gender:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::OrSymbol,
                region: String,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The `identifier` for an integration secret that refers to your Azure Speech API
              # key.
              api_key_ref: nil,
              # The deployment ID for a custom Azure neural voice.
              deployment_id: nil,
              # Audio effect to apply.
              effect: nil,
              # Voice gender filter.
              gender: nil,
              # The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
              # when using a custom API key.
              region: nil,
              # Voice settings provider type
              type: :azure
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  api_key_ref: String,
                  deployment_id: String,
                  effect:
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::OrSymbol,
                  gender:
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::OrSymbol,
                  region: String
                }
              )
            end
            def to_hash
            end

            # Audio effect to apply.
            module Effect
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EQ_CAR =
                T.let(
                  :eq_car,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )
              EQ_TELECOMHP8K =
                T.let(
                  :eq_telecomhp8k,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Voice gender filter.
            module Gender
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MALE =
                T.let(
                  :Male,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )
              FEMALE =
                T.let(
                  :Female,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Rime < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Rime,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # Speech speed multiplier. Default is 1.0.
            sig { returns(T.nilable(Float)) }
            attr_reader :voice_speed

            sig { params(voice_speed: Float).void }
            attr_writer :voice_speed

            sig do
              params(voice_speed: Float, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # Speech speed multiplier. Default is 1.0.
              voice_speed: nil,
              # Voice settings provider type
              type: :rime
            )
            end

            sig { override.returns({ type: Symbol, voice_speed: Float }) }
            def to_hash
            end
          end

          class Resemble < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # Output audio format.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::OrSymbol
                )
              )
            end
            attr_reader :format_

            sig do
              params(
                format_:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::OrSymbol
              ).void
            end
            attr_writer :format_

            # Audio precision format.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol
                )
              )
            end
            attr_reader :precision

            sig do
              params(
                precision:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol
              ).void
            end
            attr_writer :precision

            # Audio sample rate in Hz.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
                )
              )
            end
            attr_reader :sample_rate

            sig do
              params(
                sample_rate:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
              ).void
            end
            attr_writer :sample_rate

            sig do
              params(
                format_:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::OrSymbol,
                precision:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol,
                sample_rate:
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Output audio format.
              format_: nil,
              # Audio precision format.
              precision: nil,
              # Audio sample rate in Hz.
              sample_rate: nil,
              # Voice settings provider type
              type: :resemble
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  format_:
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::OrSymbol,
                  precision:
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol,
                  sample_rate:
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
                }
              )
            end
            def to_hash
            end

            # Output audio format.
            module Format
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WAV =
                T.let(
                  :wav,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )
              MP3 =
                T.let(
                  :mp3,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Audio precision format.
            module Precision
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PCM_16 =
                T.let(
                  :PCM_16,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_24 =
                T.let(
                  :PCM_24,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_32 =
                T.let(
                  :PCM_32,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              MULAW =
                T.let(
                  :MULAW,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Audio sample rate in Hz.
            module SampleRate
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SAMPLE_RATE_8000 =
                T.let(
                  :"8000",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_16000 =
                T.let(
                  :"16000",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_22050 =
                T.let(
                  :"22050",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_32000 =
                T.let(
                  :"32000",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_44100 =
                T.let(
                  :"44100",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_48000 =
                T.let(
                  :"48000",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
