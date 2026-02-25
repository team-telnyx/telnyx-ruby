# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionGatherUsingSpeakParams,
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

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # The number of milliseconds to wait for input between digits.
        sig { returns(T.nilable(Integer)) }
        attr_reader :inter_digit_timeout_millis

        sig { params(inter_digit_timeout_millis: Integer).void }
        attr_writer :inter_digit_timeout_millis

        # The text or SSML to be converted into speech when digits don't match the
        # `valid_digits` parameter or the number of digits is not between `min` and `max`.
        # There is a 3,000 character limit.
        sig { returns(T.nilable(String)) }
        attr_reader :invalid_payload

        sig { params(invalid_payload: String).void }
        attr_writer :invalid_payload

        # The language you want spoken. This parameter is ignored when a `Polly.*` voice
        # is specified.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The maximum number of digits to fetch. This parameter has a maximum value
        # of 128.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_digits

        sig { params(maximum_digits: Integer).void }
        attr_writer :maximum_digits

        # The maximum number of times that a file should be played back if there is no
        # input from the user on the call.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_tries

        sig { params(maximum_tries: Integer).void }
        attr_writer :maximum_tries

        # The minimum number of digits to fetch. This parameter has a minimum value of 1.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_digits

        sig { params(minimum_digits: Integer).void }
        attr_writer :minimum_digits

        # The type of the provided payload. The payload can either be plain text, or
        # Speech Synthesis Markup Language (SSML).
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::OrSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # This parameter impacts speech quality, language options and payload types. When
        # using `basic`, only the `en-US` language and payload type `text` are allowed.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::OrSymbol
            )
          )
        end
        attr_reader :service_level

        sig do
          params(
            service_level:
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::OrSymbol
          ).void
        end
        attr_writer :service_level

        # The digit used to terminate input if fewer than `maximum_digits` digits have
        # been gathered.
        sig { returns(T.nilable(String)) }
        attr_reader :terminating_digit

        sig { params(terminating_digit: String).void }
        attr_writer :terminating_digit

        # The number of milliseconds to wait for a DTMF response after speak ends before a
        # replaying the sound file.
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_millis

        sig { params(timeout_millis: Integer).void }
        attr_writer :timeout_millis

        # A list of all digits accepted as valid.
        sig { returns(T.nilable(String)) }
        attr_reader :valid_digits

        sig { params(valid_digits: String).void }
        attr_writer :valid_digits

        # The settings associated with the voice selected
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings,
                Telnyx::Calls::TelnyxVoiceSettings,
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::MinimaxVoiceSettings,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble
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
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::OrHash
              )
          ).void
        end
        attr_writer :voice_settings

        sig do
          params(
            payload: String,
            voice: String,
            client_state: String,
            command_id: String,
            inter_digit_timeout_millis: Integer,
            invalid_payload: String,
            language:
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::OrSymbol,
            maximum_digits: Integer,
            maximum_tries: Integer,
            minimum_digits: Integer,
            payload_type:
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::OrSymbol,
            service_level:
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::OrSymbol,
            terminating_digit: String,
            timeout_millis: Integer,
            valid_digits: String,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::MinimaxVoiceSettings::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime::OrHash,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::OrHash
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
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The number of milliseconds to wait for input between digits.
          inter_digit_timeout_millis: nil,
          # The text or SSML to be converted into speech when digits don't match the
          # `valid_digits` parameter or the number of digits is not between `min` and `max`.
          # There is a 3,000 character limit.
          invalid_payload: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The maximum number of digits to fetch. This parameter has a maximum value
          # of 128.
          maximum_digits: nil,
          # The maximum number of times that a file should be played back if there is no
          # input from the user on the call.
          maximum_tries: nil,
          # The minimum number of digits to fetch. This parameter has a minimum value of 1.
          minimum_digits: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # This parameter impacts speech quality, language options and payload types. When
          # using `basic`, only the `en-US` language and payload type `text` are allowed.
          service_level: nil,
          # The digit used to terminate input if fewer than `maximum_digits` digits have
          # been gathered.
          terminating_digit: nil,
          # The number of milliseconds to wait for a DTMF response after speak ends before a
          # replaying the sound file.
          timeout_millis: nil,
          # A list of all digits accepted as valid.
          valid_digits: nil,
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
              client_state: String,
              command_id: String,
              inter_digit_timeout_millis: Integer,
              invalid_payload: String,
              language:
                Telnyx::Calls::ActionGatherUsingSpeakParams::Language::OrSymbol,
              maximum_digits: Integer,
              maximum_tries: Integer,
              minimum_digits: Integer,
              payload_type:
                Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::OrSymbol,
              service_level:
                Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::OrSymbol,
              terminating_digit: String,
              timeout_millis: Integer,
              valid_digits: String,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  Telnyx::Calls::AwsVoiceSettings,
                  Telnyx::MinimaxVoiceSettings,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble
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
              T.all(
                Symbol,
                Telnyx::Calls::ActionGatherUsingSpeakParams::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARB =
            T.let(
              :arb,
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          CMN_CN =
            T.let(
              :"cmn-CN",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-GB",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-DE",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          EN_GB_WLS =
            T.let(
              :"en-GB-WLS",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-ES",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-MX",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-US",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-FR",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-IN",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-IS",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-IT",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-JP",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-NO",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-NL",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-PL",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-RO",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-RU",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-TR",
              Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionGatherUsingSpeakParams::Language::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # This parameter impacts speech quality, language options and payload types. When
        # using `basic`, only the `en-US` language and payload type `text` are allowed.
        module ServiceLevel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BASIC =
            T.let(
              :basic,
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::TaggedSymbol
            )
          PREMIUM =
            T.let(
              :premium,
              Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel::TaggedSymbol
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
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime,
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble
              )
            end

          class Azure < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure,
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
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::OrSymbol
                )
              )
            end
            attr_reader :effect

            sig do
              params(
                effect:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::OrSymbol
              ).void
            end
            attr_writer :effect

            # Voice gender filter.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::OrSymbol
                )
              )
            end
            attr_reader :gender

            sig do
              params(
                gender:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::OrSymbol
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
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::OrSymbol,
                gender:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::OrSymbol,
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::OrSymbol,
                  gender:
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::OrSymbol,
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EQ_CAR =
                T.let(
                  :eq_car,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )
              EQ_TELECOMHP8K =
                T.let(
                  :eq_telecomhp8k,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Effect::TaggedSymbol
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MALE =
                T.let(
                  :Male,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )
              FEMALE =
                T.let(
                  :Female,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Azure::Gender::TaggedSymbol
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
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Rime,
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
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble,
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
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::OrSymbol
                )
              )
            end
            attr_reader :format_

            sig do
              params(
                format_:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::OrSymbol
              ).void
            end
            attr_writer :format_

            # Audio precision format.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol
                )
              )
            end
            attr_reader :precision

            sig do
              params(
                precision:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol
              ).void
            end
            attr_writer :precision

            # Audio sample rate in Hz.
            sig do
              returns(
                T.nilable(
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
                )
              )
            end
            attr_reader :sample_rate

            sig do
              params(
                sample_rate:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
              ).void
            end
            attr_writer :sample_rate

            sig do
              params(
                format_:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::OrSymbol,
                precision:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol,
                sample_rate:
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol,
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::OrSymbol,
                  precision:
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::OrSymbol,
                  sample_rate:
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::OrSymbol
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              WAV =
                T.let(
                  :wav,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )
              MP3 =
                T.let(
                  :mp3,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Format::TaggedSymbol
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PCM_16 =
                T.let(
                  :PCM_16,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_24 =
                T.let(
                  :PCM_24,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              PCM_32 =
                T.let(
                  :PCM_32,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )
              MULAW =
                T.let(
                  :MULAW,
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::Precision::TaggedSymbol
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
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SAMPLE_RATE_8000 =
                T.let(
                  :"8000",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_16000 =
                T.let(
                  :"16000",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_22050 =
                T.let(
                  :"22050",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_32000 =
                T.let(
                  :"32000",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_44100 =
                T.let(
                  :"44100",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )
              SAMPLE_RATE_48000 =
                T.let(
                  :"48000",
                  Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Resemble::SampleRate::TaggedSymbol
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
                Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings::Variants
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
