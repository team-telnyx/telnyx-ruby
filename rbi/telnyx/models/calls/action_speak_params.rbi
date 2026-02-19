# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::ActionSpeakParams, Telnyx::Internal::AnyHash)
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
        # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
        #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
        #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
        #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
        # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
        #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
        #   integration identifier secret in
        #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
        #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
        # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
        #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
        #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
        #   `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
        #   default 0).
        # - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
        #   `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
        #   (English only).
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

        # The language you want spoken. This parameter is ignored when a `Polly.*` voice
        # is specified.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionSpeakParams::Language::OrSymbol)
          )
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::Calls::ActionSpeakParams::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # The number of times to play the audio file. Use `infinity` to loop indefinitely.
        # Defaults to 1.
        sig { returns(T.nilable(Telnyx::Calls::Loopcount::Variants)) }
        attr_reader :loop_

        sig { params(loop_: Telnyx::Calls::Loopcount::Variants).void }
        attr_writer :loop_

        # The type of the provided payload. The payload can either be plain text, or
        # Speech Synthesis Markup Language (SSML).
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionSpeakParams::PayloadType::OrSymbol)
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Telnyx::Calls::ActionSpeakParams::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # This parameter impacts speech quality, language options and payload types. When
        # using `basic`, only the `en-US` language and payload type `text` are allowed.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionSpeakParams::ServiceLevel::OrSymbol)
          )
        end
        attr_reader :service_level

        sig do
          params(
            service_level:
              Telnyx::Calls::ActionSpeakParams::ServiceLevel::OrSymbol
          ).void
        end
        attr_writer :service_level

        # When specified, it stops the current audio being played. Specify `current` to
        # stop the current audio being played, and to play the next file in the queue.
        # Specify `all` to stop the current audio file being played and to also clear all
        # audio files from the queue.
        sig { returns(T.nilable(String)) }
        attr_reader :stop

        sig { params(stop: String).void }
        attr_writer :stop

        # Specifies which legs of the call should receive the spoken audio.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionSpeakParams::TargetLegs::OrSymbol)
          )
        end
        attr_reader :target_legs

        sig do
          params(
            target_legs: Telnyx::Calls::ActionSpeakParams::TargetLegs::OrSymbol
          ).void
        end
        attr_writer :target_legs

        # The settings associated with the voice selected
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings,
                Telnyx::Calls::TelnyxVoiceSettings,
                Telnyx::Calls::AwsVoiceSettings,
                Telnyx::MinimaxVoiceSettings
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
                Telnyx::MinimaxVoiceSettings::OrHash
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
            language: Telnyx::Calls::ActionSpeakParams::Language::OrSymbol,
            loop_: Telnyx::Calls::Loopcount::Variants,
            payload_type:
              Telnyx::Calls::ActionSpeakParams::PayloadType::OrSymbol,
            service_level:
              Telnyx::Calls::ActionSpeakParams::ServiceLevel::OrSymbol,
            stop: String,
            target_legs: Telnyx::Calls::ActionSpeakParams::TargetLegs::OrSymbol,
            voice_settings:
              T.any(
                Telnyx::Calls::ElevenLabsVoiceSettings::OrHash,
                Telnyx::Calls::TelnyxVoiceSettings::OrHash,
                Telnyx::Calls::AwsVoiceSettings::OrHash,
                Telnyx::MinimaxVoiceSettings::OrHash
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
          # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
          #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
          #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
          #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
          # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
          #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
          #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
          #   integration identifier secret in
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
          # - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
          #   `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
          #   `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
          #   `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
          #   default 0).
          # - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
          #   `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
          #   (English only).
          voice:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The language you want spoken. This parameter is ignored when a `Polly.*` voice
          # is specified.
          language: nil,
          # The number of times to play the audio file. Use `infinity` to loop indefinitely.
          # Defaults to 1.
          loop_: nil,
          # The type of the provided payload. The payload can either be plain text, or
          # Speech Synthesis Markup Language (SSML).
          payload_type: nil,
          # This parameter impacts speech quality, language options and payload types. When
          # using `basic`, only the `en-US` language and payload type `text` are allowed.
          service_level: nil,
          # When specified, it stops the current audio being played. Specify `current` to
          # stop the current audio being played, and to play the next file in the queue.
          # Specify `all` to stop the current audio file being played and to also clear all
          # audio files from the queue.
          stop: nil,
          # Specifies which legs of the call should receive the spoken audio.
          target_legs: nil,
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
              language: Telnyx::Calls::ActionSpeakParams::Language::OrSymbol,
              loop_: Telnyx::Calls::Loopcount::Variants,
              payload_type:
                Telnyx::Calls::ActionSpeakParams::PayloadType::OrSymbol,
              service_level:
                Telnyx::Calls::ActionSpeakParams::ServiceLevel::OrSymbol,
              stop: String,
              target_legs:
                Telnyx::Calls::ActionSpeakParams::TargetLegs::OrSymbol,
              voice_settings:
                T.any(
                  Telnyx::Calls::ElevenLabsVoiceSettings,
                  Telnyx::Calls::TelnyxVoiceSettings,
                  Telnyx::Calls::AwsVoiceSettings,
                  Telnyx::MinimaxVoiceSettings
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
              T.all(Symbol, Telnyx::Calls::ActionSpeakParams::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ARB =
            T.let(
              :arb,
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          CMN_CN =
            T.let(
              :"cmn-CN",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          CY_GB =
            T.let(
              :"cy-GB",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-DE",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_GB_WLS =
            T.let(
              :"en-GB-WLS",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-ES",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-MX",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-US",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-FR",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-IN",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-IS",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-IT",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-JP",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          NB_NO =
            T.let(
              :"nb-NO",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-NL",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-PL",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-RO",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-RU",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-TR",
              Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Calls::ActionSpeakParams::Language::TaggedSymbol]
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
              T.all(Symbol, Telnyx::Calls::ActionSpeakParams::PayloadType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Telnyx::Calls::ActionSpeakParams::PayloadType::TaggedSymbol
            )
          SSML =
            T.let(
              :ssml,
              Telnyx::Calls::ActionSpeakParams::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionSpeakParams::PayloadType::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::ActionSpeakParams::ServiceLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BASIC =
            T.let(
              :basic,
              Telnyx::Calls::ActionSpeakParams::ServiceLevel::TaggedSymbol
            )
          PREMIUM =
            T.let(
              :premium,
              Telnyx::Calls::ActionSpeakParams::ServiceLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionSpeakParams::ServiceLevel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies which legs of the call should receive the spoken audio.
        module TargetLegs
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionSpeakParams::TargetLegs)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SELF =
            T.let(
              :self,
              Telnyx::Calls::ActionSpeakParams::TargetLegs::TaggedSymbol
            )
          OPPOSITE =
            T.let(
              :opposite,
              Telnyx::Calls::ActionSpeakParams::TargetLegs::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionSpeakParams::TargetLegs::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionSpeakParams::TargetLegs::TaggedSymbol
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
                Telnyx::MinimaxVoiceSettings
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionSpeakParams::VoiceSettings::Variants
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
