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
      # size: 5MB for Telnyx, 20MB for Minimax.
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

      # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      sig do
        returns(
          T.nilable(
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::OrSymbol
          )
        )
      end
      attr_reader :provider

      sig do
        params(
          provider: Telnyx::VoiceCloneCreateFromUploadParams::Provider::OrSymbol
        ).void
      end
      attr_writer :provider

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
          provider:
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::OrSymbol,
          ref_text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
        # For best quality, provide 5–10 seconds of clear, uninterrupted speech. Maximum
        # size: 5MB for Telnyx, 20MB for Minimax.
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
        # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
        provider: nil,
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
            provider:
              Telnyx::VoiceCloneCreateFromUploadParams::Provider::OrSymbol,
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

      # Voice synthesis provider. Case-insensitive. Defaults to `telnyx`.
      module Provider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::VoiceCloneCreateFromUploadParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX =
          T.let(
            :telnyx,
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::TaggedSymbol
          )
        TELNYX_2 =
          T.let(
            :Telnyx,
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::TaggedSymbol
          )
        MINIMAX =
          T.let(
            :minimax,
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::TaggedSymbol
          )
        MINIMAX_2 =
          T.let(
            :Minimax,
            Telnyx::VoiceCloneCreateFromUploadParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VoiceCloneCreateFromUploadParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
