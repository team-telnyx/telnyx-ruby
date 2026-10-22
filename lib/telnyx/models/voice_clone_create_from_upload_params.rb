# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_upload
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute voice_clone_upload_request
      #   Multipart form data for creating a voice clone from a direct audio upload.
      #   Maximum file size: 20MB.
      #
      #   @return [Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone]
      required :voice_clone_upload_request,
               union: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest }

      # @!method initialize(voice_clone_upload_request:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceCloneCreateFromUploadParams} for more details.
      #
      #   @param voice_clone_upload_request [Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone] Multipart form data for creating a voice clone from a direct audio upload. Maxim
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Multipart form data for creating a voice clone from a direct audio upload.
      # Maximum file size: 20MB.
      module VoiceCloneUploadRequest
        extend Telnyx::Internal::Type::Union

        # Upload-based voice clone using the Telnyx Qwen3TTS model (default).
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone }

        # Upload-based voice clone using the Telnyx Ultra model.
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone }

        # Upload-based voice clone using the Telnyx Bayan model (Arabic and English). The clone is `active` on creation. Use it as voice `Telnyx.Bayan.<clone_id>`.
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone }

        # Upload-based voice clone using the Minimax provider.
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone }

        class TelnyxQwen3TtsClone < Telnyx::Internal::Type::BaseModel
          # @!attribute audio_file
          #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #   For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          #   size: 20MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender]
          required :gender,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code from the Qwen language set.
          #
          #   @return [String]
          required :language, String

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute provider
          #   Voice synthesis provider. Must be `telnyx`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider]
          required :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider }

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute model_id
          #   TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID, nil]
          optional :model_id,
                   enum: -> {
                     Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID
                   },
                   nil?: true

          # @!attribute ref_text
          #   Optional transcript of the audio file. Providing this improves clone quality.
          #
          #   @return [String, nil]
          optional :ref_text, String

          # @!method initialize(audio_file:, gender:, language:, name:, provider:, label: nil, model_id: nil, ref_text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone}
          #   for more details.
          #
          #   Upload-based voice clone using the Telnyx Qwen3TTS model (default).
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Qwen language set.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::Provider] Voice synthesis provider. Must be `telnyx`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::ModelID, nil] TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Must be `telnyx`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            MINIMAX = :minimax

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            QWEN3_TTS = :Qwen3TTS

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TelnyxUltraClone < Telnyx::Internal::Type::BaseModel
          # @!attribute audio_file
          #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #   For best quality, provide up to 60 seconds of clear, uninterrupted speech.
          #   Maximum size: 20MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender]
          required :gender,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code from the Ultra language set (42 languages).
          #
          #   @return [String]
          required :language, String

          # @!attribute model_id
          #   TTS model identifier. Must be `Ultra`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID]
          required :model_id,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID }

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute provider
          #   Voice synthesis provider. Must be `telnyx`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider]
          required :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider }

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute ref_text
          #   Optional transcript of the audio file. Providing this improves clone quality.
          #
          #   @return [String, nil]
          optional :ref_text, String

          # @!method initialize(audio_file:, gender:, language:, model_id:, name:, provider:, label: nil, ref_text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone}
          #   for more details.
          #
          #   Upload-based voice clone using the Telnyx Ultra model.
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Ultra language set (42 languages).
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::ModelID] TTS model identifier. Must be `Ultra`.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::Provider] Voice synthesis provider. Must be `telnyx`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Must be `Ultra`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            ULTRA = :Ultra

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Must be `telnyx`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            MINIMAX = :minimax

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class TelnyxBayanClone < Telnyx::Internal::Type::BaseModel
          # @!attribute audio_file
          #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #   Converted to 24 kHz mono WAV and trimmed to the first 10 seconds. For best
          #   quality, provide about 10 seconds of clean, single-speaker speech. Maximum size:
          #   20MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender]
          required :gender,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender }

          # @!attribute model_id
          #   TTS model identifier. Must be `Bayan`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID]
          required :model_id,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID }

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute ref_text
          #   Exact transcript of the reference audio. Required for Bayan: a missing, empty,
          #   or whitespace-only value returns `422` with `source.pointer` `/ref_text`. An
          #   inaccurate transcript can make synthesis with the clone truncated or garbled.
          #   Record a known script of about 10 seconds and pass it verbatim.
          #
          #   @return [String]
          required :ref_text, String

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute language
          #   Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to
          #   `ar`. Other values return `422`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language, nil]
          optional :language,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language }

          # @!attribute provider
          #   Voice synthesis provider. Defaults to `telnyx`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider, nil]
          optional :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider }

          # @!method initialize(audio_file:, gender:, model_id:, name:, ref_text:, label: nil, language: nil, provider: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone}
          #   for more details.
          #
          #   Upload-based voice clone using the Telnyx Bayan model (Arabic and English). The
          #   clone is `active` on creation. Use it as voice `Telnyx.Bayan.<clone_id>`.
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Gender] Gender of the voice clone.
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::ModelID] TTS model identifier. Must be `Bayan`.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param ref_text [String] Exact transcript of the reference audio. Required for Bayan: a missing, empty, o
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param language [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Language] Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to `a
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::Provider] Voice synthesis provider. Defaults to `telnyx`.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Must be `Bayan`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            BAYAN = :Bayan

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Language of the reference audio: `ar` (Arabic) or `en` (English). Defaults to
          # `ar`. Other values return `422`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone#language
          module Language
            extend Telnyx::Internal::Type::Enum

            AR = :ar
            EN = :en

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Defaults to `telnyx`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            TELNYX_2 = :Telnyx

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class MinimaxClone < Telnyx::Internal::Type::BaseModel
          # @!attribute audio_file
          #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #   For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          #   size: 20MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender]
          required :gender,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code from the Minimax language set.
          #
          #   @return [String]
          required :language, String

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute provider
          #   Voice synthesis provider. Must be `minimax`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider]
          required :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider }

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute model_id
          #   TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID, nil]
          optional :model_id,
                   enum: -> {
                     Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID
                   },
                   nil?: true

          # @!attribute ref_text
          #   Optional transcript of the audio file. Providing this improves clone quality.
          #
          #   @return [String, nil]
          optional :ref_text, String

          # @!method initialize(audio_file:, gender:, language:, name:, provider:, label: nil, model_id: nil, ref_text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone}
          #   for more details.
          #
          #   Upload-based voice clone using the Minimax provider.
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Minimax language set.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::Provider] Voice synthesis provider. Must be `minimax`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::ModelID, nil] TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone#gender
          module Gender
            extend Telnyx::Internal::Type::Enum

            MALE = :male
            FEMALE = :female
            NEUTRAL = :neutral

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Must be `minimax`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            MINIMAX = :minimax

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            SPEECH_2_8_TURBO = :"speech-2.8-turbo"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone)]
      end
    end
  end
end
