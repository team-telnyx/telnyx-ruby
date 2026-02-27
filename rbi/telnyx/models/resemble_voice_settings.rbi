# typed: strong

module Telnyx
  module Models
    class ResembleVoiceSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ResembleVoiceSettings, Telnyx::Internal::AnyHash)
        end

      # Voice settings provider type
      sig { returns(Telnyx::ResembleVoiceSettings::Type::OrSymbol) }
      attr_accessor :type

      # Output audio format.
      sig do
        returns(T.nilable(Telnyx::ResembleVoiceSettings::Format::OrSymbol))
      end
      attr_reader :file_format

      sig do
        params(
          file_format: Telnyx::ResembleVoiceSettings::Format::OrSymbol
        ).void
      end
      attr_writer :file_format

      # Audio precision format.
      sig do
        returns(T.nilable(Telnyx::ResembleVoiceSettings::Precision::OrSymbol))
      end
      attr_reader :precision

      sig do
        params(
          precision: Telnyx::ResembleVoiceSettings::Precision::OrSymbol
        ).void
      end
      attr_writer :precision

      # Audio sample rate in Hz.
      sig do
        returns(T.nilable(Telnyx::ResembleVoiceSettings::SampleRate::OrSymbol))
      end
      attr_reader :sample_rate

      sig do
        params(
          sample_rate: Telnyx::ResembleVoiceSettings::SampleRate::OrSymbol
        ).void
      end
      attr_writer :sample_rate

      sig do
        params(
          type: Telnyx::ResembleVoiceSettings::Type::OrSymbol,
          file_format: Telnyx::ResembleVoiceSettings::Format::OrSymbol,
          precision: Telnyx::ResembleVoiceSettings::Precision::OrSymbol,
          sample_rate: Telnyx::ResembleVoiceSettings::SampleRate::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Voice settings provider type
        type:,
        # Output audio format.
        file_format: nil,
        # Audio precision format.
        precision: nil,
        # Audio sample rate in Hz.
        sample_rate: nil
      )
      end

      sig do
        override.returns(
          {
            type: Telnyx::ResembleVoiceSettings::Type::OrSymbol,
            file_format: Telnyx::ResembleVoiceSettings::Format::OrSymbol,
            precision: Telnyx::ResembleVoiceSettings::Precision::OrSymbol,
            sample_rate: Telnyx::ResembleVoiceSettings::SampleRate::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Voice settings provider type
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ResembleVoiceSettings::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RESEMBLE =
          T.let(:resemble, Telnyx::ResembleVoiceSettings::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ResembleVoiceSettings::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Output audio format.
      module Format
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ResembleVoiceSettings::Format) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WAV = T.let(:wav, Telnyx::ResembleVoiceSettings::Format::TaggedSymbol)
        MP3 = T.let(:mp3, Telnyx::ResembleVoiceSettings::Format::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ResembleVoiceSettings::Format::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Audio precision format.
      module Precision
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ResembleVoiceSettings::Precision)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PCM_16 =
          T.let(:PCM_16, Telnyx::ResembleVoiceSettings::Precision::TaggedSymbol)
        PCM_24 =
          T.let(:PCM_24, Telnyx::ResembleVoiceSettings::Precision::TaggedSymbol)
        PCM_32 =
          T.let(:PCM_32, Telnyx::ResembleVoiceSettings::Precision::TaggedSymbol)
        MULAW =
          T.let(:MULAW, Telnyx::ResembleVoiceSettings::Precision::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ResembleVoiceSettings::Precision::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Audio sample rate in Hz.
      module SampleRate
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ResembleVoiceSettings::SampleRate)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SAMPLE_RATE_8000 =
          T.let(
            :"8000",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )
        SAMPLE_RATE_16000 =
          T.let(
            :"16000",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )
        SAMPLE_RATE_22050 =
          T.let(
            :"22050",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )
        SAMPLE_RATE_32000 =
          T.let(
            :"32000",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )
        SAMPLE_RATE_44100 =
          T.let(
            :"44100",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )
        SAMPLE_RATE_48000 =
          T.let(
            :"48000",
            Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ResembleVoiceSettings::SampleRate::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
