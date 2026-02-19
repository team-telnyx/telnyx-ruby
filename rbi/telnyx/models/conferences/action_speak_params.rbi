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
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax
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
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::OrHash
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
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::OrHash
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
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax
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
                Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax
              )
            end

          class Minimax < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax,
                  Telnyx::Internal::AnyHash
                )
              end

            # Voice settings provider type
            sig { returns(Symbol) }
            attr_accessor :type

            # Enhances recognition for specific languages and dialects during MiniMax TTS
            # synthesis. Default is null (no boost). Set to 'auto' for automatic language
            # detection.
            sig do
              returns(
                T.nilable(
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::OrSymbol
                )
              )
            end
            attr_accessor :language_boost

            # Voice pitch adjustment. Default is 0.
            sig { returns(T.nilable(Integer)) }
            attr_reader :pitch

            sig { params(pitch: Integer).void }
            attr_writer :pitch

            # Speech speed multiplier. Default is 1.0.
            sig { returns(T.nilable(Float)) }
            attr_reader :speed

            sig { params(speed: Float).void }
            attr_writer :speed

            # Speech volume multiplier. Default is 1.0.
            sig { returns(T.nilable(Float)) }
            attr_reader :vol

            sig { params(vol: Float).void }
            attr_writer :vol

            sig do
              params(
                language_boost:
                  T.nilable(
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::OrSymbol
                  ),
                pitch: Integer,
                speed: Float,
                vol: Float,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Enhances recognition for specific languages and dialects during MiniMax TTS
              # synthesis. Default is null (no boost). Set to 'auto' for automatic language
              # detection.
              language_boost: nil,
              # Voice pitch adjustment. Default is 0.
              pitch: nil,
              # Speech speed multiplier. Default is 1.0.
              speed: nil,
              # Speech volume multiplier. Default is 1.0.
              vol: nil,
              # Voice settings provider type
              type: :minimax
            )
            end

            sig do
              override.returns(
                {
                  type: Symbol,
                  language_boost:
                    T.nilable(
                      Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::OrSymbol
                    ),
                  pitch: Integer,
                  speed: Float,
                  vol: Float
                }
              )
            end
            def to_hash
            end

            # Enhances recognition for specific languages and dialects during MiniMax TTS
            # synthesis. Default is null (no boost). Set to 'auto' for automatic language
            # detection.
            module LanguageBoost
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AUTO =
                T.let(
                  :auto,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              CHINESE =
                T.let(
                  :Chinese,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              CHINESE_YUE =
                T.let(
                  :"Chinese,Yue",
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              ENGLISH =
                T.let(
                  :English,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              ARABIC =
                T.let(
                  :Arabic,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              RUSSIAN =
                T.let(
                  :Russian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              SPANISH =
                T.let(
                  :Spanish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              FRENCH =
                T.let(
                  :French,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              PORTUGUESE =
                T.let(
                  :Portuguese,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              GERMAN =
                T.let(
                  :German,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              TURKISH =
                T.let(
                  :Turkish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              DUTCH =
                T.let(
                  :Dutch,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              UKRAINIAN =
                T.let(
                  :Ukrainian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              VIETNAMESE =
                T.let(
                  :Vietnamese,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              INDONESIAN =
                T.let(
                  :Indonesian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              JAPANESE =
                T.let(
                  :Japanese,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              ITALIAN =
                T.let(
                  :Italian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              KOREAN =
                T.let(
                  :Korean,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              THAI =
                T.let(
                  :Thai,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              POLISH =
                T.let(
                  :Polish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              ROMANIAN =
                T.let(
                  :Romanian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              GREEK =
                T.let(
                  :Greek,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              CZECH =
                T.let(
                  :Czech,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              FINNISH =
                T.let(
                  :Finnish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              HINDI =
                T.let(
                  :Hindi,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              BULGARIAN =
                T.let(
                  :Bulgarian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              DANISH =
                T.let(
                  :Danish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              HEBREW =
                T.let(
                  :Hebrew,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              MALAY =
                T.let(
                  :Malay,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              PERSIAN =
                T.let(
                  :Persian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              SLOVAK =
                T.let(
                  :Slovak,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              SWEDISH =
                T.let(
                  :Swedish,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              CROATIAN =
                T.let(
                  :Croatian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              FILIPINO =
                T.let(
                  :Filipino,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              HUNGARIAN =
                T.let(
                  :Hungarian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              NORWEGIAN =
                T.let(
                  :Norwegian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              SLOVENIAN =
                T.let(
                  :Slovenian,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              CATALAN =
                T.let(
                  :Catalan,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              NYNORSK =
                T.let(
                  :Nynorsk,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              TAMIL =
                T.let(
                  :Tamil,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )
              AFRIKAANS =
                T.let(
                  :Afrikaans,
                  Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax::LanguageBoost::TaggedSymbol
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
