# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_upload
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute params
      #   Multipart form data for creating a voice clone from a direct audio upload.
      #   Maximum file size: 5MB for Telnyx, 20MB for Minimax.
      #
      #   @return [Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone]
      required :params, union: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params }

      # @!method initialize(params:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceCloneCreateFromUploadParams} for more details.
      #
      #   @param params [Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone] Multipart form data for creating a voice clone from a direct audio upload. Maxim
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Multipart form data for creating a voice clone from a direct audio upload.
      # Maximum file size: 5MB for Telnyx, 20MB for Minimax.
      module Params
        extend Telnyx::Internal::Type::Union

        # Upload-based voice clone using the Telnyx Qwen3TTS model (default).
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone }

        # Upload-based voice clone using the Telnyx Ultra model.
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone }

        # Upload-based voice clone using the Minimax provider.
        variant -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone }

        class TelnyxQwen3TtsClone < Telnyx::Internal::Type::BaseModel
          # @!attribute audio_file
          #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #   For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          #   size: 5MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender]
          required :gender,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender }

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
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider]
          required :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider }

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute model_id
          #   TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID, nil]
          optional :model_id,
                   enum: -> {
                     Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID
                   },
                   nil?: true

          # @!attribute ref_text
          #   Optional transcript of the audio file. Providing this improves clone quality.
          #
          #   @return [String, nil]
          optional :ref_text, String

          # @!method initialize(audio_file:, gender:, language:, name:, provider:, label: nil, model_id: nil, ref_text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone}
          #   for more details.
          #
          #   Upload-based voice clone using the Telnyx Qwen3TTS model (default).
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Qwen language set.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::Provider] Voice synthesis provider. Must be `telnyx`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone::ModelID, nil] TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone#gender
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
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            TELNYX = :telnyx
            TELNYX_2 = :Telnyx

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Nullable/omittable — defaults to Qwen3TTS.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone#model_id
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
          #   For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
          #   size: 5MB.
          #
          #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
          required :audio_file, Telnyx::Internal::Type::FileInput

          # @!attribute gender
          #   Gender of the voice clone.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender]
          required :gender, enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender }

          # @!attribute language
          #   ISO 639-1 language code from the Ultra language set (40 languages).
          #
          #   @return [String]
          required :language, String

          # @!attribute model_id
          #   TTS model identifier. Must be `Ultra`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID]
          required :model_id,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID }

          # @!attribute name
          #   Name for the voice clone.
          #
          #   @return [String]
          required :name, String

          # @!attribute provider
          #   Voice synthesis provider. Must be `telnyx`.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider]
          required :provider,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider }

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
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone} for
          #   more details.
          #
          #   Upload-based voice clone using the Telnyx Ultra model.
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Ultra language set (40 languages).
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::ModelID] TTS model identifier. Must be `Ultra`.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone::Provider] Voice synthesis provider. Must be `telnyx`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone#gender
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
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            ULTRA = :Ultra

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Voice synthesis provider. Must be `telnyx`.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone#provider
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
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender]
          required :gender, enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender }

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
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider]
          required :provider, enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider }

          # @!attribute label
          #   Optional custom label describing the voice style.
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute model_id
          #   TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID, nil]
          optional :model_id,
                   enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID },
                   nil?: true

          # @!attribute ref_text
          #   Optional transcript of the audio file. Providing this improves clone quality.
          #
          #   @return [String, nil]
          optional :ref_text, String

          # @!method initialize(audio_file:, gender:, language:, name:, provider:, label: nil, model_id: nil, ref_text: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone} for
          #   more details.
          #
          #   Upload-based voice clone using the Minimax provider.
          #
          #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
          #
          #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Gender] Gender of the voice clone.
          #
          #   @param language [String] ISO 639-1 language code from the Minimax language set.
          #
          #   @param name [String] Name for the voice clone.
          #
          #   @param provider [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::Provider] Voice synthesis provider. Must be `minimax`.
          #
          #   @param label [String] Optional custom label describing the voice style.
          #
          #   @param model_id [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone::ModelID, nil] TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.

          # Gender of the voice clone.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone#gender
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
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone#provider
          module Provider
            extend Telnyx::Internal::Type::Enum

            MINIMAX = :minimax
            MINIMAX_2 = :Minimax

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # TTS model identifier. Nullable — defaults to speech-2.8-turbo.
          #
          # @see Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone#model_id
          module ModelID
            extend Telnyx::Internal::Type::Enum

            SPEECH_2_8_TURBO = :"speech-2.8-turbo"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxQwen3TtsClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::TelnyxUltraClone, Telnyx::Models::VoiceCloneCreateFromUploadParams::Params::MinimaxClone)]
      end
    end
  end
end
