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

      # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
      # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
      # size: 2MB.
      sig { returns(Telnyx::Internal::FileInput) }
      attr_accessor :audio_file

      # ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
      sig { returns(String) }
      attr_accessor :language

      # Name for the voice clone.
      sig { returns(String) }
      attr_accessor :name

      # Gender of the voice clone.
      sig do
        returns(
          T.nilable(Telnyx::VoiceCloneCreateFromUploadParams::Gender::OrSymbol)
        )
      end
      attr_reader :gender

      sig do
        params(
          gender: Telnyx::VoiceCloneCreateFromUploadParams::Gender::OrSymbol
        ).void
      end
      attr_writer :gender

      # Optional custom label describing the voice style. If omitted, falls back to the
      # source design's prompt text.
      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      # Optional transcript of the audio file. Providing this improves clone quality.
      sig { returns(T.nilable(String)) }
      attr_reader :ref_text

      sig { params(ref_text: String).void }
      attr_writer :ref_text

      sig do
        params(
          audio_file: Telnyx::Internal::FileInput,
          language: String,
          name: String,
          gender: Telnyx::VoiceCloneCreateFromUploadParams::Gender::OrSymbol,
          label: String,
          ref_text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
        # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
        # size: 2MB.
        audio_file:,
        # ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
        language:,
        # Name for the voice clone.
        name:,
        # Gender of the voice clone.
        gender: nil,
        # Optional custom label describing the voice style. If omitted, falls back to the
        # source design's prompt text.
        label: nil,
        # Optional transcript of the audio file. Providing this improves clone quality.
        ref_text: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            audio_file: Telnyx::Internal::FileInput,
            language: String,
            name: String,
            gender: Telnyx::VoiceCloneCreateFromUploadParams::Gender::OrSymbol,
            label: String,
            ref_text: String,
            request_options: Telnyx::RequestOptions
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
            T.all(Symbol, Telnyx::VoiceCloneCreateFromUploadParams::Gender)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MALE =
          T.let(
            :male,
            Telnyx::VoiceCloneCreateFromUploadParams::Gender::TaggedSymbol
          )
        FEMALE =
          T.let(
            :female,
            Telnyx::VoiceCloneCreateFromUploadParams::Gender::TaggedSymbol
          )
        NEUTRAL =
          T.let(
            :neutral,
            Telnyx::VoiceCloneCreateFromUploadParams::Gender::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VoiceCloneCreateFromUploadParams::Gender::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
