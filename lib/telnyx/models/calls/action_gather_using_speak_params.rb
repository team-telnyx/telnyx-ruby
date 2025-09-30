# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather_using_speak
      class ActionGatherUsingSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute payload
        #   The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        #   @return [String]
        required :payload, String

        # @!attribute voice
        #   Specifies the voice used in speech synthesis.
        #
        #   - Define voices using the format `<Provider>.<Model>.<VoiceId>`. Specifying only
        #     the provider will give default values for voice_id and model_id.
        #
        #     **Supported Providers:**
        #
        #   - **AWS:** Use `AWS.Polly.<VoiceId>` (e.g., `AWS.Polly.Joanna`). For neural
        #     voices, which provide more realistic, human-like speech, append `-Neural` to
        #     the `VoiceId` (e.g., `AWS.Polly.Joanna-Neural`). Check the
        #     [available voices](https://docs.aws.amazon.com/polly/latest/dg/available-voices.html)
        #     for compatibility.
        #   - **Azure:** Use `Azure.<VoiceId>. (e.g. Azure.en-CA-ClaraNeural,
        #     Azure.en-CA-LiamNeural, Azure.en-US-BrianMultilingualNeural,
        #     Azure.en-US-Ava:DragonHDLatestNeural. For a complete list of voices, go to
        #     [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery).)
        #   - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #     `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
        #     is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
        #     integration identifier secret in
        #     `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
        #     [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #     for details. Check
        #     [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        #   - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
        #
        #   For service_level basic, you may define the gender of the speaker (male or
        #   female).
        #
        #   @return [String]
        required :voice, String

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute inter_digit_timeout_millis
        #   The number of milliseconds to wait for input between digits.
        #
        #   @return [Integer, nil]
        optional :inter_digit_timeout_millis, Integer

        # @!attribute invalid_payload
        #   The text or SSML to be converted into speech when digits don't match the
        #   `valid_digits` parameter or the number of digits is not between `min` and `max`.
        #   There is a 3,000 character limit.
        #
        #   @return [String, nil]
        optional :invalid_payload, String

        # @!attribute language
        #   The language you want spoken. This parameter is ignored when a `Polly.*` voice
        #   is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::ActionGatherUsingSpeakParams::Language }

        # @!attribute maximum_digits
        #   The maximum number of digits to fetch. This parameter has a maximum value
        #   of 128.
        #
        #   @return [Integer, nil]
        optional :maximum_digits, Integer

        # @!attribute maximum_tries
        #   The maximum number of times that a file should be played back if there is no
        #   input from the user on the call.
        #
        #   @return [Integer, nil]
        optional :maximum_tries, Integer

        # @!attribute minimum_digits
        #   The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        #   @return [Integer, nil]
        optional :minimum_digits, Integer

        # @!attribute payload_type
        #   The type of the provided payload. The payload can either be plain text, or
        #   Speech Synthesis Markup Language (SSML).
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::PayloadType, nil]
        optional :payload_type, enum: -> { Telnyx::Calls::ActionGatherUsingSpeakParams::PayloadType }

        # @!attribute service_level
        #   This parameter impacts speech quality, language options and payload types. When
        #   using `basic`, only the `en-US` language and payload type `text` are allowed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::ServiceLevel, nil]
        optional :service_level, enum: -> { Telnyx::Calls::ActionGatherUsingSpeakParams::ServiceLevel }

        # @!attribute terminating_digit
        #   The digit used to terminate input if fewer than `maximum_digits` digits have
        #   been gathered.
        #
        #   @return [String, nil]
        optional :terminating_digit, String

        # @!attribute timeout_millis
        #   The number of milliseconds to wait for a DTMF response after speak ends before a
        #   replaying the sound file.
        #
        #   @return [Integer, nil]
        optional :timeout_millis, Integer

        # @!attribute valid_digits
        #   A list of all digits accepted as valid.
        #
        #   @return [String, nil]
        optional :valid_digits, String

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionGatherUsingSpeakParams::VoiceSettings }

        # @!method initialize(payload:, voice:, client_state: nil, command_id: nil, inter_digit_timeout_millis: nil, invalid_payload: nil, language: nil, maximum_digits: nil, maximum_tries: nil, minimum_digits: nil, payload_type: nil, service_level: nil, terminating_digit: nil, timeout_millis: nil, valid_digits: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionGatherUsingSpeakParams} for more details.
        #
        #   @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        #   @param voice [String] Specifies the voice used in speech synthesis.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param inter_digit_timeout_millis [Integer] The number of milliseconds to wait for input between digits.
        #
        #   @param invalid_payload [String] The text or SSML to be converted into speech when digits don't match the
        #   `valid\_
        #
        #   @param language [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        #   @param maximum_digits [Integer] The maximum number of digits to fetch. This parameter has a maximum value of 128
        #
        #   @param maximum_tries [Integer] The maximum number of times that a file should be played back if there is no inp
        #
        #   @param minimum_digits [Integer] The minimum number of digits to fetch. This parameter has a minimum value of 1.
        #
        #   @param payload_type [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        #   @param service_level [Symbol, Telnyx::Models::Calls::ActionGatherUsingSpeakParams::ServiceLevel] This parameter impacts speech quality, language options and payload types. When
        #
        #   @param terminating_digit [String] The digit used to terminate input if fewer than `maximum_digits` digits have bee
        #
        #   @param timeout_millis [Integer] The number of milliseconds to wait for a DTMF response after speak ends before a
        #
        #   @param valid_digits [String] A list of all digits accepted as valid.
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object] The settings associated with the voice selected
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The language you want spoken. This parameter is ignored when a `Polly.*` voice
        # is specified.
        module Language
          extend Telnyx::Internal::Type::Enum

          ARB = :arb
          CMN_CN = :"cmn-CN"
          CY_GB = :"cy-GB"
          DA_DK = :"da-DK"
          DE_DE = :"de-DE"
          EN_AU = :"en-AU"
          EN_GB = :"en-GB"
          EN_GB_WLS = :"en-GB-WLS"
          EN_IN = :"en-IN"
          EN_US = :"en-US"
          ES_ES = :"es-ES"
          ES_MX = :"es-MX"
          ES_US = :"es-US"
          FR_CA = :"fr-CA"
          FR_FR = :"fr-FR"
          HI_IN = :"hi-IN"
          IS_IS = :"is-IS"
          IT_IT = :"it-IT"
          JA_JP = :"ja-JP"
          KO_KR = :"ko-KR"
          NB_NO = :"nb-NO"
          NL_NL = :"nl-NL"
          PL_PL = :"pl-PL"
          PT_BR = :"pt-BR"
          PT_PT = :"pt-PT"
          RO_RO = :"ro-RO"
          RU_RU = :"ru-RU"
          SV_SE = :"sv-SE"
          TR_TR = :"tr-TR"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the provided payload. The payload can either be plain text, or
        # Speech Synthesis Markup Language (SSML).
        module PayloadType
          extend Telnyx::Internal::Type::Enum

          TEXT = :text
          SSML = :ssml

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # This parameter impacts speech quality, language options and payload types. When
        # using `basic`, only the `en-US` language and payload type `text` are allowed.
        module ServiceLevel
          extend Telnyx::Internal::Type::Enum

          BASIC = :basic
          PREMIUM = :premium

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The settings associated with the voice selected
        module VoiceSettings
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::Calls::ElevenLabsVoiceSettings }

          variant -> { Telnyx::Calls::TelnyxVoiceSettings }

          variant -> { Telnyx::Calls::AwsVoiceSettings }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Object)]
        end
      end
    end
  end
end
