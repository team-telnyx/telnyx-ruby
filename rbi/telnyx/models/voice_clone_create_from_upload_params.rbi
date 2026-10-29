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
      # Maximum file size: 20MB.
      sig do
        returns(
          T.any(
            Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone,
            Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone,
            Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone,
            Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone,
            Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone
          )
        )
      end
      attr_accessor :voice_clone_upload_request

      sig do
        params(
          voice_clone_upload_request:
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Multipart form data for creating a voice clone from a direct audio upload.
        # Maximum file size: 20MB.
        voice_clone_upload_request:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            voice_clone_upload_request:
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Multipart form data for creating a voice clone from a direct audio upload.
      # Maximum file size: 20MB.
      module VoiceCloneUploadRequest
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone
            )
          end

        class TelnyxQwen3TtsClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone,
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
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::OrSymbol
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
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::OrSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID::OrSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::OrSymbol,
              language: String,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::OrSymbol,
              label: String,
              model_id:
                T.nilable(
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::OrSymbol,
                language: String,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::OrSymbol,
                label: String,
                model_id:
                  T.nilable(
                    Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::TaggedSymbol
              )
            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QWEN3_TTS =
              T.let(
                :Qwen3TTS,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID::TaggedSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # For best quality, provide up to 60 seconds of clear, uninterrupted speech.
          # Maximum size: 20MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # ISO 639-1 language code from the Ultra language set (42 languages).
          sig { returns(String) }
          attr_accessor :language

          # TTS model identifier. Must be `Ultra`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID::OrSymbol
            )
          end
          attr_accessor :model_id

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `telnyx`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::OrSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::OrSymbol,
              language: String,
              model_id:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID::OrSymbol,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::OrSymbol,
              label: String,
              ref_text: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # For best quality, provide up to 60 seconds of clear, uninterrupted speech.
            # Maximum size: 20MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # ISO 639-1 language code from the Ultra language set (42 languages).
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::OrSymbol,
                language: String,
                model_id:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID::OrSymbol,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::OrSymbol,
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ULTRA =
              T.let(
                :Ultra,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::TaggedSymbol
              )
            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class TelnyxBayanClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # Converted to 24 kHz mono WAV and trimmed to the first 10 seconds. For best
          # quality, provide about 10 seconds of clean, single-speaker speech. Maximum size:
          # 20MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # TTS model identifier. Must be `Bayan`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID::OrSymbol
            )
          end
          attr_accessor :model_id

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Exact transcript of the reference audio. Required for Bayan: a missing, empty,
          # or whitespace-only value returns `422` with `source.pointer` `/ref_text`. An
          # inaccurate transcript can make synthesis with the clone truncated or garbled.
          # Record a known script of about 10 seconds and pass it verbatim.
          sig { returns(String) }
          attr_accessor :ref_text

          # Optional custom label describing the voice style.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to
          # `ar`. Other values return `422`.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::OrSymbol
            ).void
          end
          attr_writer :language

          # Voice synthesis provider. Defaults to `telnyx`.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::OrSymbol
              )
            )
          end
          attr_reader :provider

          sig do
            params(
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::OrSymbol
            ).void
          end
          attr_writer :provider

          # Upload-based voice clone using the Telnyx Bayan model (Arabic and English). The
          # clone is `active` on creation. Use it as voice `Telnyx.Bayan.<clone_id>`.
          sig do
            params(
              audio_file: Telnyx::Internal::FileInput,
              gender:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::OrSymbol,
              model_id:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID::OrSymbol,
              name: String,
              ref_text: String,
              label: String,
              language:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::OrSymbol,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # Converted to 24 kHz mono WAV and trimmed to the first 10 seconds. For best
            # quality, provide about 10 seconds of clean, single-speaker speech. Maximum size:
            # 20MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # TTS model identifier. Must be `Bayan`.
            model_id:,
            # Name for the voice clone.
            name:,
            # Exact transcript of the reference audio. Required for Bayan: a missing, empty,
            # or whitespace-only value returns `422` with `source.pointer` `/ref_text`. An
            # inaccurate transcript can make synthesis with the clone truncated or garbled.
            # Record a known script of about 10 seconds and pass it verbatim.
            ref_text:,
            # Optional custom label describing the voice style.
            label: nil,
            # Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to
            # `ar`. Other values return `422`.
            language: nil,
            # Voice synthesis provider. Defaults to `telnyx`.
            provider: nil
          )
          end

          sig do
            override.returns(
              {
                audio_file: Telnyx::Internal::FileInput,
                gender:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::OrSymbol,
                model_id:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID::OrSymbol,
                name: String,
                ref_text: String,
                label: String,
                language:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::OrSymbol,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # TTS model identifier. Must be `Bayan`.
          module ModelID
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BAYAN =
              T.let(
                :Bayan,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to
          # `ar`. Other values return `422`.
          module Language
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AR =
              T.let(
                :ar,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::TaggedSymbol
              )
            EN =
              T.let(
                :en,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Defaults to `telnyx`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider::TaggedSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone,
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
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::OrSymbol
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
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::OrSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID::OrSymbol
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
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::OrSymbol,
              language: String,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::OrSymbol,
              label: String,
              model_id:
                T.nilable(
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::OrSymbol,
                language: String,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::OrSymbol,
                label: String,
                model_id:
                  T.nilable(
                    Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::TaggedSymbol
              )
            MINIMAX =
              T.let(
                :minimax,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider::TaggedSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SPEECH_2_8_TURBO =
              T.let(
                :"speech-2.8-turbo",
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ResembleClone < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone,
                Telnyx::Internal::AnyHash
              )
            end

          # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          # Converted to WAV and trimmed to the first 10 seconds. For best quality, provide
          # about 10 seconds of clean, single-speaker speech. Maximum size: 20MB.
          sig { returns(Telnyx::Internal::FileInput) }
          attr_accessor :audio_file

          # Gender of the voice clone.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::OrSymbol
            )
          end
          attr_accessor :gender

          # Resemble model: `Pro`, `Turbo` (English only), or `Urdu`. A clone works only
          # with this model.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::OrSymbol
            )
          end
          attr_accessor :model_id

          # Name for the voice clone.
          sig { returns(String) }
          attr_accessor :name

          # Voice synthesis provider. Must be `resemble`.
          sig do
            returns(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider::OrSymbol
            )
          end
          attr_accessor :provider

          # Optional custom label describing the voice style.
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # Language of the reference audio, matched case-insensitively. Pro: required, one
          # of `ar`, `da`, `de`, `el`, `en-US`, `es`, `fi`, `fr-fr`, `he`, `hi`, `it`, `ja`,
          # `ko`, `ms`, `nl`, `no`, `pl`, `pt`, `ru`, `sv`, `sw`, `tr`, `zh`. Turbo: `en` or
          # `en-US` (default `en-US`). Urdu: `ur` (default). Other values return `422`.
          sig do
            returns(
              T.nilable(
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::OrSymbol
            ).void
          end
          attr_writer :language

          # Upload-based voice clone using the Resemble provider. The clone is `active` on
          # creation. Use it as voice `Resemble.<model_id>.<clone_id>`.
          sig do
            params(
              audio_file: Telnyx::Internal::FileInput,
              gender:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::OrSymbol,
              model_id:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::OrSymbol,
              name: String,
              provider:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider::OrSymbol,
              label: String,
              language:
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
            # Converted to WAV and trimmed to the first 10 seconds. For best quality, provide
            # about 10 seconds of clean, single-speaker speech. Maximum size: 20MB.
            audio_file:,
            # Gender of the voice clone.
            gender:,
            # Resemble model: `Pro`, `Turbo` (English only), or `Urdu`. A clone works only
            # with this model.
            model_id:,
            # Name for the voice clone.
            name:,
            # Voice synthesis provider. Must be `resemble`.
            provider:,
            # Optional custom label describing the voice style.
            label: nil,
            # Language of the reference audio, matched case-insensitively. Pro: required, one
            # of `ar`, `da`, `de`, `el`, `en-US`, `es`, `fi`, `fr-fr`, `he`, `hi`, `it`, `ja`,
            # `ko`, `ms`, `nl`, `no`, `pl`, `pt`, `ru`, `sv`, `sw`, `tr`, `zh`. Turbo: `en` or
            # `en-US` (default `en-US`). Urdu: `ur` (default). Other values return `422`.
            language: nil
          )
          end

          sig do
            override.returns(
              {
                audio_file: Telnyx::Internal::FileInput,
                gender:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::OrSymbol,
                model_id:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::OrSymbol,
                name: String,
                provider:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider::OrSymbol,
                label: String,
                language:
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::OrSymbol
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
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MALE =
              T.let(
                :male,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::TaggedSymbol
              )
            FEMALE =
              T.let(
                :female,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::TaggedSymbol
              )
            NEUTRAL =
              T.let(
                :neutral,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Gender::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Resemble model: `Pro`, `Turbo` (English only), or `Urdu`. A clone works only
          # with this model.
          module ModelID
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRO =
              T.let(
                :Pro,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::TaggedSymbol
              )
            TURBO =
              T.let(
                :Turbo,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::TaggedSymbol
              )
            URDU =
              T.let(
                :Urdu,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::ModelID::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Voice synthesis provider. Must be `resemble`.
          module Provider
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RESEMBLE =
              T.let(
                :resemble,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Provider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Language of the reference audio, matched case-insensitively. Pro: required, one
          # of `ar`, `da`, `de`, `el`, `en-US`, `es`, `fi`, `fr-fr`, `he`, `hi`, `it`, `ja`,
          # `ko`, `ms`, `nl`, `no`, `pl`, `pt`, `ru`, `sv`, `sw`, `tr`, `zh`. Turbo: `en` or
          # `en-US` (default `en-US`). Urdu: `ur` (default). Other values return `422`.
          module Language
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AR =
              T.let(
                :ar,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            DA =
              T.let(
                :da,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            DE =
              T.let(
                :de,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            EL =
              T.let(
                :el,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            EN =
              T.let(
                :en,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            EN_US =
              T.let(
                :"en-US",
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            ES =
              T.let(
                :es,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            FI =
              T.let(
                :fi,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            FR_FR =
              T.let(
                :"fr-fr",
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            HE =
              T.let(
                :he,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            HI =
              T.let(
                :hi,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            IT =
              T.let(
                :it,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            JA =
              T.let(
                :ja,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            KO =
              T.let(
                :ko,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            MS =
              T.let(
                :ms,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            NL =
              T.let(
                :nl,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            NO =
              T.let(
                :no,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            PL =
              T.let(
                :pl,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            PT =
              T.let(
                :pt,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            RU =
              T.let(
                :ru,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            SV =
              T.let(
                :sv,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            SW =
              T.let(
                :sw,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            TR =
              T.let(
                :tr,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            UR =
              T.let(
                :ur,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )
            ZH =
              T.let(
                :zh,
                Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::Language::TaggedSymbol
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
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
