# typed: strong

module Telnyx
  module Models
    module AI
      class InferenceEmbeddingVoiceSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingVoiceSettings,
              Telnyx::Internal::AnyHash
            )
          end

        # The voice to be used by the voice assistant. Check the full list of
        # [available voices](https://developers.telnyx.com/docs/tts-stt/tts-available-voices)
        # via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
        # key as an integration secret under the `api_key_ref` field. See
        # [integration secrets documentation](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        # for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
        # Telnyx.KokoroTTS.af_heart). For Soniox voices, use `Soniox.tts-rt-v2.<voice_id>`
        # (e.g. Soniox.tts-rt-v2.Emma); every Soniox voice speaks all supported languages.
        # The voice portion of the identifier supports
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        # using mustache syntax (e.g. `Telnyx.Ultra.{{voice_id}}`). The variable is
        # resolved at call time from your dynamic variables webhook, allowing you to
        # select the voice dynamically per call.
        sig { returns(String) }
        attr_accessor :voice

        # The `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2
              )
            )
          )
        end
        attr_reader :background_audio

        sig do
          params(
            background_audio:
              T.any(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::OrHash,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::OrHash,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::OrHash
              )
          ).void
        end
        attr_writer :background_audio

        # Enables emotionally expressive speech using SSML emotion tags. When enabled, the
        # assistant uses audio tags like angry, excited, content, and sad to add emotional
        # nuance. Only supported for Telnyx Ultra voices.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :expressive_mode

        sig { params(expressive_mode: T::Boolean).void }
        attr_writer :expressive_mode

        # Enhances recognition for specific languages and dialects during MiniMax TTS
        # synthesis. Default is null (no boost). Set to 'auto' for automatic language
        # detection. Only applicable when using MiniMax voices.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::OrSymbol
            )
          )
        end
        attr_accessor :language_boost

        # Determines how closely the AI should adhere to the original voice when
        # attempting to replicate it. Only applicable when using ElevenLabs.
        sig { returns(T.nilable(Float)) }
        attr_reader :similarity_boost

        sig { params(similarity_boost: Float).void }
        attr_writer :similarity_boost

        # Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
        # values greater than 1.0 accelerate it. Only applicable when using ElevenLabs.
        sig { returns(T.nilable(Float)) }
        attr_reader :speed

        sig { params(speed: Float).void }
        attr_writer :speed

        # Determines the style exaggeration of the voice. Amplifies speaker style but
        # consumes additional resources when set above 0. Only applicable when using
        # ElevenLabs.
        sig { returns(T.nilable(Float)) }
        attr_reader :style

        sig { params(style: Float).void }
        attr_writer :style

        # Determines how stable the voice is and the randomness between each generation.
        # Lower values create a broader emotional range; higher values produce more
        # consistent, monotonous output. Only applicable when using ElevenLabs.
        sig { returns(T.nilable(Float)) }
        attr_reader :temperature

        sig { params(temperature: Float).void }
        attr_writer :temperature

        # Amplifies similarity to the original speaker voice. Increases computational load
        # and latency slightly. Only applicable when using ElevenLabs.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_speaker_boost

        sig { params(use_speaker_boost: T::Boolean).void }
        attr_writer :use_speaker_boost

        # The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
        # numbers make the voice faster, smaller numbers make it slower. This is only
        # applicable for Telnyx Natural voices and Soniox voices (0.7 to 1.3 for Soniox).
        sig { returns(T.nilable(Float)) }
        attr_reader :voice_speed

        sig { params(voice_speed: Float).void }
        attr_writer :voice_speed

        sig do
          params(
            voice: String,
            api_key_ref: String,
            background_audio:
              T.any(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::OrHash,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::OrHash,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::OrHash
              ),
            expressive_mode: T::Boolean,
            language_boost:
              T.nilable(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::OrSymbol
              ),
            similarity_boost: Float,
            speed: Float,
            style: Float,
            temperature: Float,
            use_speaker_boost: T::Boolean,
            voice_speed: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The voice to be used by the voice assistant. Check the full list of
          # [available voices](https://developers.telnyx.com/docs/tts-stt/tts-available-voices)
          # via our voices API. To use ElevenLabs, you must reference your ElevenLabs API
          # key as an integration secret under the `api_key_ref` field. See
          # [integration secrets documentation](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # for details. For Telnyx voices, use `Telnyx.<model_id>.<voice_id>` (e.g.
          # Telnyx.KokoroTTS.af_heart). For Soniox voices, use `Soniox.tts-rt-v2.<voice_id>`
          # (e.g. Soniox.tts-rt-v2.Emma); every Soniox voice speaks all supported languages.
          # The voice portion of the identifier supports
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # using mustache syntax (e.g. `Telnyx.Ultra.{{voice_id}}`). The variable is
          # resolved at call time from your dynamic variables webhook, allowing you to
          # select the voice dynamically per call.
          voice:,
          # The `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # that refers to your ElevenLabs API key. Warning: Free plans are unlikely to work
          # with this integration.
          api_key_ref: nil,
          # Optional background audio to play on the call. Use a predefined media bed, or
          # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
          # preview it before saving.
          background_audio: nil,
          # Enables emotionally expressive speech using SSML emotion tags. When enabled, the
          # assistant uses audio tags like angry, excited, content, and sad to add emotional
          # nuance. Only supported for Telnyx Ultra voices.
          expressive_mode: nil,
          # Enhances recognition for specific languages and dialects during MiniMax TTS
          # synthesis. Default is null (no boost). Set to 'auto' for automatic language
          # detection. Only applicable when using MiniMax voices.
          language_boost: nil,
          # Determines how closely the AI should adhere to the original voice when
          # attempting to replicate it. Only applicable when using ElevenLabs.
          similarity_boost: nil,
          # Adjusts speech velocity. 1.0 is default speed; values less than 1.0 slow speech;
          # values greater than 1.0 accelerate it. Only applicable when using ElevenLabs.
          speed: nil,
          # Determines the style exaggeration of the voice. Amplifies speaker style but
          # consumes additional resources when set above 0. Only applicable when using
          # ElevenLabs.
          style: nil,
          # Determines how stable the voice is and the randomness between each generation.
          # Lower values create a broader emotional range; higher values produce more
          # consistent, monotonous output. Only applicable when using ElevenLabs.
          temperature: nil,
          # Amplifies similarity to the original speaker voice. Increases computational load
          # and latency slightly. Only applicable when using ElevenLabs.
          use_speaker_boost: nil,
          # The speed of the voice in the range [0.25, 2.0]. 1.0 is deafult speed. Larger
          # numbers make the voice faster, smaller numbers make it slower. This is only
          # applicable for Telnyx Natural voices and Soniox voices (0.7 to 1.3 for Soniox).
          voice_speed: nil
        )
        end

        sig do
          override.returns(
            {
              voice: String,
              api_key_ref: String,
              background_audio:
                T.any(
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2
                ),
              expressive_mode: T::Boolean,
              language_boost:
                T.nilable(
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::OrSymbol
                ),
              similarity_boost: Float,
              speed: Float,
              style: Float,
              temperature: Float,
              use_speaker_boost: T::Boolean,
              voice_speed: Float
            }
          )
        end
        def to_hash
        end

        # Optional background audio to play on the call. Use a predefined media bed, or
        # supply a looped MP3 URL. If a media URL is chosen in the portal, customers can
        # preview it before saving.
        module BackgroundAudio
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2
              )
            end

          class UnionMember0 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0,
                  Telnyx::Internal::AnyHash
                )
              end

            # Select from predefined media options.
            sig do
              returns(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The predefined media to use. `silence` disables background audio.
            sig do
              returns(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol
              )
            end
            attr_accessor :value

            # Volume level for the predefined background audio. Supports values from 0.1 to
            # 1.0 in 0.1 increments.
            sig { returns(T.nilable(Float)) }
            attr_reader :volume

            sig { params(volume: Float).void }
            attr_writer :volume

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol,
                value:
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol,
                volume: Float
              ).returns(T.attached_class)
            end
            def self.new(
              # Select from predefined media options.
              type:,
              # The predefined media to use. `silence` disables background audio.
              value:,
              # Volume level for the predefined background audio. Supports values from 0.1 to
              # 1.0 in 0.1 increments.
              volume: nil
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type::OrSymbol,
                  value:
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::OrSymbol,
                  volume: Float
                }
              )
            end
            def to_hash
            end

            # Select from predefined media options.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PREDEFINED_MEDIA =
                T.let(
                  :predefined_media,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The predefined media to use. `silence` disables background audio.
            module Value
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SILENCE =
                T.let(
                  :silence,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                )
              OFFICE =
                T.let(
                  :office,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember0::Value::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            sig do
              returns(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol
              )
            end
            attr_accessor :type

            # HTTPS URL to an MP3 file.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Provide a direct URL to an MP3 file. The audio will loop during the call.
              type:,
              # HTTPS URL to an MP3 file.
              value:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type::OrSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            # Provide a direct URL to an MP3 file. The audio will loop during the call.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MEDIA_URL =
                T.let(
                  :media_url,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember1::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember2 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2,
                  Telnyx::Internal::AnyHash
                )
              end

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            sig do
              returns(
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol
              )
            end
            attr_accessor :type

            # The `name` of a media asset created via
            # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
            # The audio will loop during the call.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                type:
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Reference a previously uploaded media by its name from Telnyx Media Storage.
              type:,
              # The `name` of a media asset created via
              # [Media Storage API](https://developers.telnyx.com/api/media-storage/create-media-storage).
              # The audio will loop during the call.
              value:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type::OrSymbol,
                  value: String
                }
              )
            end
            def to_hash
            end

            # Reference a previously uploaded media by its name from Telnyx Media Storage.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              MEDIA_NAME =
                T.let(
                  :media_name,
                  Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::UnionMember2::Type::TaggedSymbol
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
                Telnyx::AI::InferenceEmbeddingVoiceSettings::BackgroundAudio::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Enhances recognition for specific languages and dialects during MiniMax TTS
        # synthesis. Default is null (no boost). Set to 'auto' for automatic language
        # detection. Only applicable when using MiniMax voices.
        module LanguageBoost
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          CHINESE =
            T.let(
              :Chinese,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          CHINESE_YUE =
            T.let(
              :"Chinese,Yue",
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          ENGLISH =
            T.let(
              :English,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          ARABIC =
            T.let(
              :Arabic,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          RUSSIAN =
            T.let(
              :Russian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          SPANISH =
            T.let(
              :Spanish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          FRENCH =
            T.let(
              :French,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          PORTUGUESE =
            T.let(
              :Portuguese,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          GERMAN =
            T.let(
              :German,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          TURKISH =
            T.let(
              :Turkish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          DUTCH =
            T.let(
              :Dutch,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          UKRAINIAN =
            T.let(
              :Ukrainian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          VIETNAMESE =
            T.let(
              :Vietnamese,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          INDONESIAN =
            T.let(
              :Indonesian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          JAPANESE =
            T.let(
              :Japanese,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          ITALIAN =
            T.let(
              :Italian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          KOREAN =
            T.let(
              :Korean,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          THAI =
            T.let(
              :Thai,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          POLISH =
            T.let(
              :Polish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          ROMANIAN =
            T.let(
              :Romanian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          GREEK =
            T.let(
              :Greek,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          CZECH =
            T.let(
              :Czech,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          FINNISH =
            T.let(
              :Finnish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          HINDI =
            T.let(
              :Hindi,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          BULGARIAN =
            T.let(
              :Bulgarian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          DANISH =
            T.let(
              :Danish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          HEBREW =
            T.let(
              :Hebrew,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          MALAY =
            T.let(
              :Malay,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          PERSIAN =
            T.let(
              :Persian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          SLOVAK =
            T.let(
              :Slovak,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          SWEDISH =
            T.let(
              :Swedish,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          CROATIAN =
            T.let(
              :Croatian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          FILIPINO =
            T.let(
              :Filipino,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          HUNGARIAN =
            T.let(
              :Hungarian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          NORWEGIAN =
            T.let(
              :Norwegian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          SLOVENIAN =
            T.let(
              :Slovenian,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          CATALAN =
            T.let(
              :Catalan,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          NYNORSK =
            T.let(
              :Nynorsk,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          TAMIL =
            T.let(
              :Tamil,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )
          AFRIKAANS =
            T.let(
              :Afrikaans,
              Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::InferenceEmbeddingVoiceSettings::LanguageBoost::TaggedSymbol
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
