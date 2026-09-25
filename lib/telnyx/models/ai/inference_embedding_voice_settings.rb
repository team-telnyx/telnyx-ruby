# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute voice
        #   The voice to be used by the voice assistant. Check the full list of
        #   [available voices](https://developers.telnyx.com/docs/tts-stt/tts-available-voices)
        #   via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
        #   key as an integration secret under the `api_key_ref` field. See
        #   [integration secrets documentation](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
        #   Telnyx.KokoroTTS.af_heart). For Soniox voices, use `Soniox.tts-rt-v2.<voice_id>`
        #   (e.g. Soniox.tts-rt-v2.Emma); every Soniox voice speaks all supported languages.
        #   The voice portion of the identifier supports
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #   using mustache syntax (e.g. `Telnyx.Ultra.{{voice_id}}`). The variable is
        #   resolved at call time from your dynamic variables webhook, allowing you to
        #   select the voice dynamically per call.
        #
        #   @return [String]
        required :voice, String

        # @!attribute api_key_ref
        #   The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        #   with this integration.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!attribute background_audio
        #   Optional background audio to play on the call. Use a predefined media bed, or
        #   supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        #   preview it before saving.
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2, nil]
        optional :background_audio, union: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio }

        # @!attribute expressive_mode
        #   Enables emotionally expressive speech using SSML emotion tags. When enabled, the
        #   assistant uses audio tags like angry, excited, content, and sad to add emotional
        #   nuance. Only supported for Telnyx Ultra voices.
        #
        #   @return [Boolean, nil]
        optional :expressive_mode, Telnyx::Internal::Type::Boolean

        # @!attribute language_boost
        #   Enhances recognition for specific languages and dialects during MiniMax TTS
        #   synthesis. Default is null (no boost). Set to 'auto' for automatic language
        #   detection. Only applicable when using MiniMax voices.
        #
        #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::LanguageBoost, nil]
        optional :language_boost,
                 enum: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost },
                 nil?: true

        # @!attribute similarity_boost
        #   Determines how closely the AI should adhere to the original voice when
        #   attempting to replicate it. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :similarity_boost, Float

        # @!attribute speed
        #   Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
        #   values greater than 1.0 accelerate it. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :speed, Float

        # @!attribute style
        #   Determines the style exaggeration of the voice. Amplifies speaker style but
        #   consumes additional resources when set above 0. Only applicable when using
        #   ElevenLabs.
        #
        #   @return [Float, nil]
        optional :style, Float

        # @!attribute temperature
        #   Determines how stable the voice is and the randomness between each generation.
        #   Lower values create a broader emotional range; higher values produce more
        #   consistent, monotonous output. Only applicable when using ElevenLabs.
        #
        #   @return [Float, nil]
        optional :temperature, Float

        # @!attribute use_speaker_boost
        #   Amplifies similarity to the original speaker voice. Increases computational load
        #   and latency slightly. Only applicable when using ElevenLabs.
        #
        #   @return [Boolean, nil]
        optional :use_speaker_boost, Telnyx::Internal::Type::Boolean

        # @!attribute voice_speed
        #   The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
        #   numbers make the voice faster, smaller numbers make it slower. This is only
        #   applicable for Telnyx Natural voices and Soniox voices (0.7 to 1.3 for Soniox).
        #
        #   @return [Float, nil]
        optional :voice_speed, Float

        # @!method initialize(voice:, api_key_ref: nil, background_audio: nil, expressive_mode: nil, language_boost: nil, similarity_boost: nil, speed: nil, style: nil, temperature: nil, use_speaker_boost: nil, voice_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::InferenceEmbeddingVoiceSettings} for more details.
        #
        #   @param voice [String] The voice to be used by the voice assistant. Check the full list of [available v
        #
        #   @param api_key_ref [String] The `identifier` for an integration secret [/v2/integration_secrets](https://dev
        #
        #   @param background_audio [Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2] Optional background audio to play on the call. Use a predefined media bed, or su
        #
        #   @param expressive_mode [Boolean] Enables emotionally expressive speech using SSML emotion tags. When enabled, the
        #
        #   @param language_boost [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::LanguageBoost, nil] Enhances recognition for specific languages and dialects during MiniMax TTS synt
        #
        #   @param similarity_boost [Float] Determines how closely the AI should adhere to the original voice when attemptin
        #
        #   @param speed [Float] Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
        #
        #   @param style [Float] Determines the style exaggeration of the voice. Amplifies speaker style but cons
        #
        #   @param temperature [Float] Determines how stable the voice is and the randomness between each generation. L
        #
        #   @param use_speaker_boost [Boolean] Amplifies similarity to the original speaker voice. Increases computational load
        #
        #   @param voice_speed [Float] The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger nu

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        #
        # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings#background_audio
        module BackgroundAudio
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0 }

          variant -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1 }

          variant -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2 }

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Select from predefined media options.
            #
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type]
            required :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type }

            # @!attribute value
            #   The predefined media to use. `silence` disables background audio.
            #
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value]
            required :value,
                     enum: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value }

            # @!attribute volume
            #   Volume level for the predefined background audio. Supports values from 0.1 to
            #   1.0 in 0.1 increments.
            #
            #   @return [Float, nil]
            optional :volume, Float

            # @!method initialize(type:, value:, volume: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0}
            #   for more details.
            #
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type] Select from predefined media options.
            #
            #   @param value [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value] The predefined media to use. `silence` disables background audio.
            #
            #   @param volume [Float] Volume level for the predefined background audio. Supports values from 0.1 to 1.

            # Select from predefined media options.
            #
            # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0#type
            module Type
              extend Telnyx::Internal::Type::Enum

              PREDEFINED_MEDIA = :predefined_media

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The predefined media to use. `silence` disables background audio.
            #
            # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0#value
            module Value
              extend Telnyx::Internal::Type::Enum

              SILENCE = :silence
              OFFICE = :office

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type]
            required :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type }

            # @!attribute value
            #   HTTPS URL to an MP3 file.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type] Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            #   @param value [String] HTTPS URL to an MP3 file.

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            #
            # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1#type
            module Type
              extend Telnyx::Internal::Type::Enum

              MEDIA_URL = :media_url

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            #   @return [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type]
            required :type,
                     enum: -> { Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type }

            # @!attribute value
            #   The `name` of a media asset created via
            #   [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            #   The audio will loop during the call.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(type:, value:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2}
            #   for more details.
            #
            #   @param type [Symbol, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type] Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            #   @param value [String] The `name` of a media asset created via [Media Storage API](https://developers.t

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            #
            # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2#type
            module Type
              extend Telnyx::Internal::Type::Enum

              MEDIA_NAME = :media_name

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1, Telnyx::Models::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2)]
        end

        # Enhances recognition for specific languages and dialects during MiniMax TTS
        # synthesis. Default is null (no boost). Set to 'auto' for automatic language
        # detection. Only applicable when using MiniMax voices.
        #
        # @see Telnyx::Models::AI::InferenceEmbeddingVoiceSettings#language_boost
        module LanguageBoost
          extend Telnyx::Internal::Type::Enum

          AUTO = :auto
          CHINESE = :Chinese
          CHINESE_YUE = :"Chinese,Yue"
          ENGLISH = :English
          ARABIC = :Arabic
          RUSSIAN = :Russian
          SPANISH = :Spanish
          FRENCH = :French
          PORTUGUESE = :Portuguese
          GERMAN = :German
          TURKISH = :Turkish
          DUTCH = :Dutch
          UKRAINIAN = :Ukrainian
          VIETNAMESE = :Vietnamese
          INDONESIAN = :Indonesian
          JAPANESE = :Japanese
          ITALIAN = :Italian
          KOREAN = :Korean
          THAI = :Thai
          POLISH = :Polish
          ROMANIAN = :Romanian
          GREEK = :Greek
          CZECH = :Czech
          FINNISH = :Finnish
          HINDI = :Hindi
          BULGARIAN = :Bulgarian
          DANISH = :Danish
          HEBREW = :Hebrew
          MALAY = :Malay
          PERSIAN = :Persian
          SLOVAK = :Slovak
          SWEDISH = :Swedish
          CROATIAN = :Croatian
          FILIPINO = :Filipino
          HUNGARIAN = :Hungarian
          NORWEGIAN = :Norwegian
          SLOVENIAN = :Slovenian
          CATALAN = :Catalan
          NYNORSK = :Nynorsk
          TAMIL = :Tamil
          AFRIKAANS = :Afrikaans

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
