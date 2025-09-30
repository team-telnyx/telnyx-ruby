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
        # - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
        #   Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
        #   Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
        #   [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
        # - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #   `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
        #   is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
        #   integration identifier secret in
        #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
        #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #   for details. Check
        #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
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
                T.anything
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
                T.anything
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
                T.anything
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
          #   `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
          #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   for details. Check
          #   [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
          # - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
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
                  T.anything
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
                T.anything
              )
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
