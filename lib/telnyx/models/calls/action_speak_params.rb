# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#speak
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
        #   - **Azure:** Use `Azure.<VoiceId>` (e.g., `Azure.en-CA-ClaraNeural`,
        #     `Azure.en-US-BrianMultilingualNeural`,
        #     `Azure.en-US-Ava:DragonHDLatestNeural`). For a complete list of voices, go to
        #     [Azure Voice Gallery](https://speech.microsoft.com/portal/voicegallery). Use
        #     `voice_settings` to configure custom deployments, regions, or API keys.
        #   - **ElevenLabs:** Use `ElevenLabs.<ModelId>.<VoiceId>` (e.g.,
        #     `ElevenLabs.eleven_multilingual_v2.21m00Tcm4TlvDq8ikWAM`). The `ModelId` part
        #     is optional. To use ElevenLabs, you must provide your ElevenLabs API key as an
        #     integration identifier secret in
        #     `"voice_settings": {"api_key_ref": "<secret_identifier>"}`. See
        #     [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        #     for details. Check
        #     [available voices](https://elevenlabs.io/docs/api-reference/get-voices).
        #   - **Telnyx:** Use `Telnyx.<model_id>.<voice_id>` (e.g., `Telnyx.KokoroTTS.af`).
        #     Use `voice_settings` to configure voice_speed and other synthesis parameters.
        #   - **Minimax:** Use `Minimax.<ModelId>.<VoiceId>` (e.g.,
        #     `Minimax.speech-02-hd.Wise_Woman`). Supported models: `speech-02-turbo`,
        #     `speech-02-hd`, `speech-2.6-turbo`, `speech-2.8-turbo`. Use `voice_settings`
        #     to configure speed, volume, pitch, and language_boost.
        #   - **Rime:** Use `Rime.<model_id>.<voice_id>` (e.g., `Rime.Arcana.cove`).
        #     Supported model_ids: `Arcana`, `Mist`. Use `voice_settings` to configure
        #     voice_speed.
        #   - **Resemble:** Use `Resemble.Turbo.<voice_id>` (e.g.,
        #     `Resemble.Turbo.my_voice`). Only `Turbo` model is supported. Use
        #     `voice_settings` to configure precision, sample_rate, and format.
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

        # @!attribute language
        #   The language you want spoken. This parameter is ignored when a `Polly.*` voice
        #   is specified.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::ActionSpeakParams::Language }

        # @!attribute loop_
        #   The number of times to play the audio file. Use `infinity` to loop indefinitely.
        #   Defaults to 1.
        #
        #   @return [String, Integer, nil]
        optional :loop_, union: -> { Telnyx::Calls::Loopcount }, api_name: :loop

        # @!attribute payload_type
        #   The type of the provided payload. The payload can either be plain text, or
        #   Speech Synthesis Markup Language (SSML).
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::PayloadType, nil]
        optional :payload_type, enum: -> { Telnyx::Calls::ActionSpeakParams::PayloadType }

        # @!attribute service_level
        #   This parameter impacts speech quality, language options and payload types. When
        #   using `basic`, only the `en-US` language and payload type `text` are allowed.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::ServiceLevel, nil]
        optional :service_level, enum: -> { Telnyx::Calls::ActionSpeakParams::ServiceLevel }

        # @!attribute stop
        #   When specified, it stops the current audio being played. Specify `current` to
        #   stop the current audio being played, and to play the next file in the queue.
        #   Specify `all` to stop the current audio file being played and to also clear all
        #   audio files from the queue.
        #
        #   @return [String, nil]
        optional :stop, String

        # @!attribute target_legs
        #   Specifies which legs of the call should receive the spoken audio.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::TargetLegs, nil]
        optional :target_legs, enum: -> { Telnyx::Calls::ActionSpeakParams::TargetLegs }

        # @!attribute voice_settings
        #   The settings associated with the voice selected
        #
        #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble, nil]
        optional :voice_settings, union: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings }

        # @!method initialize(payload:, voice:, client_state: nil, command_id: nil, language: nil, loop_: nil, payload_type: nil, service_level: nil, stop: nil, target_legs: nil, voice_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionSpeakParams} for more details.
        #
        #   @param payload [String] The text or SSML to be converted into speech. There is a 3,000 character limit.
        #
        #   @param voice [String] Specifies the voice used in speech synthesis.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param language [Symbol, Telnyx::Models::Calls::ActionSpeakParams::Language] The language you want spoken. This parameter is ignored when a `Polly.*` voice i
        #
        #   @param loop_ [String, Integer] The number of times to play the audio file. Use `infinity` to loop indefinitely.
        #
        #   @param payload_type [Symbol, Telnyx::Models::Calls::ActionSpeakParams::PayloadType] The type of the provided payload. The payload can either be plain text, or Speec
        #
        #   @param service_level [Symbol, Telnyx::Models::Calls::ActionSpeakParams::ServiceLevel] This parameter impacts speech quality, language options and payload types. When
        #
        #   @param stop [String] When specified, it stops the current audio being played. Specify `current` to st
        #
        #   @param target_legs [Symbol, Telnyx::Models::Calls::ActionSpeakParams::TargetLegs] Specifies which legs of the call should receive the spoken audio.
        #
        #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble] The settings associated with the voice selected
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

        # Specifies which legs of the call should receive the spoken audio.
        module TargetLegs
          extend Telnyx::Internal::Type::Enum

          SELF = :self
          OPPOSITE = :opposite
          BOTH = :both

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

          variant :minimax, -> { Telnyx::MinimaxVoiceSettings }

          variant :azure, -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Azure }

          variant :rime, -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Rime }

          variant :resemble, -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Resemble }

          class Azure < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :azure]
            required :type, const: :azure

            # @!attribute api_key_ref
            #   The `identifier` for an integration secret that refers to your Azure Speech API
            #   key.
            #
            #   @return [String, nil]
            optional :api_key_ref, String

            # @!attribute deployment_id
            #   The deployment ID for a custom Azure neural voice.
            #
            #   @return [String, nil]
            optional :deployment_id, String

            # @!attribute effect
            #   Audio effect to apply.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure::Effect, nil]
            optional :effect, enum: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Azure::Effect }

            # @!attribute gender
            #   Voice gender filter.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure::Gender, nil]
            optional :gender, enum: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Azure::Gender }

            # @!attribute region
            #   The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #   when using a custom API key.
            #
            #   @return [String, nil]
            optional :region, String

            # @!method initialize(api_key_ref: nil, deployment_id: nil, effect: nil, gender: nil, region: nil, type: :azure)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure} for more
            #   details.
            #
            #   @param api_key_ref [String] The `identifier` for an integration secret that refers to your Azure Speech API
            #
            #   @param deployment_id [String] The deployment ID for a custom Azure neural voice.
            #
            #   @param effect [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure::Effect] Audio effect to apply.
            #
            #   @param gender [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure::Gender] Voice gender filter.
            #
            #   @param region [String] The Azure region for the Speech service (e.g., `eastus`, `westeurope`). Required
            #
            #   @param type [Symbol, :azure] Voice settings provider type

            # Audio effect to apply.
            #
            # @see Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure#effect
            module Effect
              extend Telnyx::Internal::Type::Enum

              EQ_CAR = :eq_car
              EQ_TELECOMHP8K = :eq_telecomhp8k

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Voice gender filter.
            #
            # @see Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure#gender
            module Gender
              extend Telnyx::Internal::Type::Enum

              MALE = :Male
              FEMALE = :Female

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Rime < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :rime]
            required :type, const: :rime

            # @!attribute voice_speed
            #   Speech speed multiplier. Default is 1.0.
            #
            #   @return [Float, nil]
            optional :voice_speed, Float

            # @!method initialize(voice_speed: nil, type: :rime)
            #   @param voice_speed [Float] Speech speed multiplier. Default is 1.0.
            #
            #   @param type [Symbol, :rime] Voice settings provider type
          end

          class Resemble < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Voice settings provider type
            #
            #   @return [Symbol, :resemble]
            required :type, const: :resemble

            # @!attribute format_
            #   Output audio format.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::Format, nil]
            optional :format_,
                     enum: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Resemble::Format },
                     api_name: :format

            # @!attribute precision
            #   Audio precision format.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::Precision, nil]
            optional :precision, enum: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Resemble::Precision }

            # @!attribute sample_rate
            #   Audio sample rate in Hz.
            #
            #   @return [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::SampleRate, nil]
            optional :sample_rate, enum: -> { Telnyx::Calls::ActionSpeakParams::VoiceSettings::Resemble::SampleRate }

            # @!method initialize(format_: nil, precision: nil, sample_rate: nil, type: :resemble)
            #   @param format_ [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::Format] Output audio format.
            #
            #   @param precision [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::Precision] Audio precision format.
            #
            #   @param sample_rate [Symbol, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble::SampleRate] Audio sample rate in Hz.
            #
            #   @param type [Symbol, :resemble] Voice settings provider type

            # Output audio format.
            #
            # @see Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble#format_
            module Format
              extend Telnyx::Internal::Type::Enum

              WAV = :wav
              MP3 = :mp3

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Audio precision format.
            #
            # @see Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble#precision
            module Precision
              extend Telnyx::Internal::Type::Enum

              PCM_16 = :PCM_16
              PCM_24 = :PCM_24
              PCM_32 = :PCM_32
              MULAW = :MULAW

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Audio sample rate in Hz.
            #
            # @see Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble#sample_rate
            module SampleRate
              extend Telnyx::Internal::Type::Enum

              SAMPLE_RATE_8000 = :"8000"
              SAMPLE_RATE_16000 = :"16000"
              SAMPLE_RATE_22050 = :"22050"
              SAMPLE_RATE_32000 = :"32000"
              SAMPLE_RATE_44100 = :"44100"
              SAMPLE_RATE_48000 = :"48000"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Azure, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Rime, Telnyx::Models::Calls::ActionSpeakParams::VoiceSettings::Resemble)]
        end
      end
    end
  end
end
