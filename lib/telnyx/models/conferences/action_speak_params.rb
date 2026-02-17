# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      # @see Telnyx::Resources::Conferences::Actions#speak
      class ActionSpeakParams < Telnyx::Internal::Type::BaseModel
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
        #     `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. Check
        #     [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        #   - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>`
        #   - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
        #     `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
        #     `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Optional parameters:
        #     `speed` (float, default 1.0), `vol` (float, default 1.0), `pitch` (integer,
        #     default 0).
        #   - **Resemble:** Use `Resemble.<ModelId>.<VoiceId>` (e.g.,
        #     `Resemble.Pro.my_voice`). Supported models: `Pro` (multilingual) and `Turbo`
        #     (English only).
        #
        #   @return [String]
        required :voice, String

        # @!attribute call_control_ids
        #   Call Control IDs of participants who will hear the spoken text. When empty all
        #   participants will hear the spoken text.
        #
        #   @return [Array<String>, nil]
        optional :call_control_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute command_id
        #   Use this field to avoid execution of duplicate commands. Telnyx will ignore
        #   subsequent commands with the same `command_id` as one that has already been
        #   executed.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute language
        #   The language you want spoken. This parameter is ignored when a `Polly.*` voice
        #   is specified.
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Language, nil]
        optional :language, enum: -> { Telnyx::Conferences::ActionSpeakParams::Language }

        # @!attribute payload_type
        #   The type of the provided payload. The payload can either be plain text, or
        #   Speech Synthesis Markup Language (SSML).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::PayloadType, nil]
        optional :payload_type, enum: -> { Telnyx::Conferences::ActionSpeakParams::PayloadType }

        # @!attribute region
        #   Region where the conference data is located. Defaults to the region defined in
        #   user's data locality settings (Europe or US).
        #
        #   @return [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Region, nil]
        optional :region, enum: -> { Telnyx::Conferences::ActionSpeakParams::Region }

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Conferences::ActionSpeakParams::VoiceSettings::Minimax, nil]
        optional :voice_settings, union: -> { Telnyx::Conferences::ActionSpeakParams::VoiceSettings }

        # @!method initialize(payload:, voice:, call_control_ids: nil, command_id: nil, language: nil, payload_type: nil, region: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Conferences::ActionSpeakParams} for more details.
        #
        #   @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        #   @param voice [String] Specifies the voice used in speech synthesis.
        #
        #   @param call_control_ids [Array<String>] Call Control IDs of participants who will hear the spoken text. When empty all p
        #
        #   @param command_id [String] Use this field to avoid execution of duplicate commands. Telnyx will ignore subs
        #
        #   @param language [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        #   @param payload_type [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        #   @param region [Symbol, Telnyx::Models::Conferences::ActionSpeakParams::Region] Region where the conference data is located. Defaults to the region defined in u
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Conferences::ActionSpeakParams::VoiceSettings::Minimax] The settings associated with the voice selected
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

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          AUSTRALIA = :Australia
          EUROPE = :Europe
          MIDDLE_EAST = :"Middle East"
          US = :US

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The settings associated with the voice selected
        module VoiceSettings
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

          variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

          variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

          variant :minimax, -> { Telnyx::Conferences::ActionSpeakParams::VoiceSettings::Minimax }

          class Minimax < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :minimax]
            required :type, const: :minimax

            # @!attribute pitch
            #   Voice pitch adjustment. Default is 0.
            #
            #   @return [Integer, nil]
            optional :pitch, Integer

            # @!attribute speed
            #   Speech speed multiplier. Default is 1.0.
            #
            #   @return [Float, nil]
            optional :speed, Float

            # @!attribute vol
            #   Speech volume multiplier. Default is 1.0.
            #
            #   @return [Float, nil]
            optional :vol, Float

            # @!method initialize(pitch: nil, speed: nil, vol: nil, type: :minimax)
            #   @param pitch [Integer] Voice pitch adjustment. Default is 0.
            #
            #   @param speed [Float] Speech speed multiplier. Default is 1.0.
            #
            #   @param vol [Float] Speech volume multiplier. Default is 1.0.
            #
            #   @param type [Symbol, :minimax] Voice settings provider type
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::Conferences::ActionSpeakParams::VoiceSettings::Minimax)]
        end
      end
    end
  end
end
