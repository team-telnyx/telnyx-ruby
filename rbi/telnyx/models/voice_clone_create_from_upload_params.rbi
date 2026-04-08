# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VoiceCloneCreateFromUploadParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Multipart form data for creating a voice clone from a direct audio upload.
      # Maximum file size: 5MB for Telnyx, 20MB for Minimax.
      sig do
        returns(
          T.any(
            Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone,
            Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone,
            Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone
          )
        )
      end
      attr_accessor :params

      sig do
        params(
          params:
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Multipart form data for creating a voice clone from a direct audio upload.
        # Maximum file size: 5MB for Telnyx, 20MB for Minimax.
        params:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            params:
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Multipart form data for creating a voice clone from a direct audio upload.
      # Maximum file size: 5MB for Telnyx, 20MB for Minimax.
      module Params
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone,
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone,
              Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone
            )
          end

        class TelnyxQwen3TtsClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          # size: 5MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code from the Qwen language set.
          sig { returns(String) }
          attr_accessor :language

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `telnyx`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::OrSymbol
            )
          end
          attr_accessor :provider

          # Optional custom label describing the voice style.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID::OrSymbol
              )
            )
          end
          attr_accessor :model_id

          # Optional transcript of the audio file. Providing this improves clone quality.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_text

          sig { params(ref_text: String).void }
          attr_writer :ref_text

          # Upload-based voice clone using the Telnyx Qwen3TTS model (default).
          sig do
            params(
              audio_file: Telnyx::Internal::FileInput,
              gender:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::OrSymbol,
              language: String,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::OrSymbol,
              label: String,
              model_id:
                T.nilable(
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID::OrSymbol
                ),
              ref_text: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
            # size: 5MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code from the Qwen language set.
            language:,
            # Name for the voice clone.
            name:,
            # Voice synthesis provider. Must be `telnyx`.
            provider:,
            # Optional custom label describing the voice style.
            label: nil,
            # TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
            model_id: nil,
            # Optional transcript of the audio file. Providing this improves clone quality.
            ref_text: nil
          )
          end

          sig do
            override.returns(
              {
                audio_file: Telnyx::Internal::FileInput,
                gender:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::OrSymbol,
                language: String,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::OrSymbol,
                label: String,
                model_id:
                  T.nilable(
                    Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID::OrSymbol
                  ),
                ref_text: String
              }
            )
          end
          def to_hash
          end

          # Gender of the voice clone.
          module Gender
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Must be `telnyx`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::TaggedSymbol
              )
            TELNYX_2 =
              T.let(
                :Telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          module ModelID
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QWEN3_TTS =
              T.let(
                :Qwen3TTS,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TelnyxUltraClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          # size: 5MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code from the Ultra language set (40 languages).
          sig { returns(String) }
          attr_accessor :language

          # TTS model identifier. Must be `Ultra`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID::OrSymbol
            )
          end
          attr_accessor :model_id

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `telnyx`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::OrSymbol
            )
          end
          attr_accessor :provider

          # Optional custom label describing the voice style.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # Optional transcript of the audio file. Providing this improves clone quality.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_text

          sig { params(ref_text: String).void }
          attr_writer :ref_text

          # Upload-based voice clone using the Telnyx Ultra model.
          sig do
            params(
              audio_file: Telnyx::Internal::FileInput,
              gender:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::OrSymbol,
              language: String,
              model_id:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID::OrSymbol,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::OrSymbol,
              label: String,
              ref_text: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
            # size: 5MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code from the Ultra language set (40 languages).
            language:,
            # TTS model identifier. Must be `Ultra`.
            model_id:,
            # Name for the voice clone.
            name:,
            # Voice synthesis provider. Must be `telnyx`.
            provider:,
            # Optional custom label describing the voice style.
            label: nil,
            # Optional transcript of the audio file. Providing this improves clone quality.
            ref_text: nil
          )
          end

          sig do
            override.returns(
              {
                audio_file: Telnyx::Internal::FileInput,
                gender:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::OrSymbol,
                language: String,
                model_id:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID::OrSymbol,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::OrSymbol,
                label: String,
                ref_text: String
              }
            )
          end
          def to_hash
          end

          # Gender of the voice clone.
          module Gender
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # TTS model identifier. Must be `Ultra`.
          module ModelID
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ULTRA =
              T.let(
                :Ultra,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Must be `telnyx`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::TaggedSymbol
              )
            TELNYX_2 =
              T.let(
                :Telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class MinimaxClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          # size: 20MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code from the Minimax language set.
          sig { returns(String) }
          attr_accessor :language

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `minimax`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::OrSymbol
            )
          end
          attr_accessor :provider

          # Optional custom label describing the voice style.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID::OrSymbol
              )
            )
          end
          attr_accessor :model_id

          # Optional transcript of the audio file. Providing this improves clone quality.
          sig { returns(T.nilable(String)) }
          attr_reader :ref_text

          sig { params(ref_text: String).void }
          attr_writer :ref_text

          # Upload-based voice clone using the Minimax provider.
          sig do
            params(
              audio_file: Telnyx::Internal::FileInput,
              gender:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::OrSymbol,
              language: String,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::OrSymbol,
              label: String,
              model_id:
                T.nilable(
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID::OrSymbol
                ),
              ref_text: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
            # size: 20MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code from the Minimax language set.
            language:,
            # Name for the voice clone.
            name:,
            # Voice synthesis provider. Must be `minimax`.
            provider:,
            # Optional custom label describing the voice style.
            label: nil,
            # TTS model identifier. Nullable — defaults to speech-2.8-turbo.
            model_id: nil,
            # Optional transcript of the audio file. Providing this improves clone quality.
            ref_text: nil
          )
          end

          sig do
            override.returns(
              {
                audio_file: Telnyx::Internal::FileInput,
                gender:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::OrSymbol,
                language: String,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::OrSymbol,
                label: String,
                model_id:
                  T.nilable(
                    Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID::OrSymbol
                  ),
                ref_text: String
              }
            )
          end
          def to_hash
          end

          # Gender of the voice clone.
          module Gender
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Must be `minimax`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::TaggedSymbol
              )
            MINIMAX_2 =
              T.let(
                :Minimax,
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          module ModelID
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SPEECH_2_8_TURBO =
              T.let(
                :"speech-2.8-turbo",
                Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneCreateFromUploadParams::Params::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
