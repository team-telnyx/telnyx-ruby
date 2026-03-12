# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_upload
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute audio_file
      #   Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
      #   For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
      #   size: 2MB.
      #
      #   @return [Pathname, StringIO, IO, String, Telnyx::FilePart]
      required :audio_file, Telnyx::Internal::Type::FileInput

      # @!attribute language
      #   ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
      #
      #   @return [String]
      required :language, String

      # @!attribute name
      #   Name for the voice clone.
      #
      #   @return [String]
      required :name, String

      # @!attribute gender
      #   Gender of the voice clone.
      #
      #   @return [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Gender, nil]
      optional :gender, enum: -> { Telnyx::VoiceCloneCreateFromUploadParams::Gender }

      # @!attribute label
      #   Optional custom label describing the voice style. If omitted, falls back to the
      #   source design's prompt text.
      #
      #   @return [String, nil]
      optional :label, String

      # @!attribute ref_text
      #   Optional transcript of the audio file. Providing this improves clone quality.
      #
      #   @return [String, nil]
      optional :ref_text, String

      # @!method initialize(audio_file:, language:, name:, gender: nil, label: nil, ref_text: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceCloneCreateFromUploadParams} for more details.
      #
      #   @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
      #
      #   @param language [String] ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
      #
      #   @param name [String] Name for the voice clone.
      #
      #   @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Gender] Gender of the voice clone.
      #
      #   @param label [String] Optional custom label describing the voice style. If omitted, falls back to the
      #
      #   @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Gender of the voice clone.
      module Gender
        extend Telnyx::Internal::Type::Enum

        MALE = :male
        FEMALE = :female
        NEUTRAL = :neutral

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
