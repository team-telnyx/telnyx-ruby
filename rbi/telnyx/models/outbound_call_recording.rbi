# typed: strong

module Telnyx
  module Models
    class OutboundCallRecording < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::OutboundCallRecording, Telnyx::Internal::AnyHash)
        end

      # When call_recording_type is 'by_caller_phone_number', only outbound calls using
      # one of these numbers will be recorded. Numbers must be specified in E164 format.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :call_recording_caller_phone_numbers

      sig { params(call_recording_caller_phone_numbers: T::Array[String]).void }
      attr_writer :call_recording_caller_phone_numbers

      # When using 'dual' channels, the final audio file will be a stereo recording with
      # the first leg on channel A, and the rest on channel B.
      sig do
        returns(
          T.nilable(
            Telnyx::OutboundCallRecording::CallRecordingChannels::OrSymbol
          )
        )
      end
      attr_reader :call_recording_channels

      sig do
        params(
          call_recording_channels:
            Telnyx::OutboundCallRecording::CallRecordingChannels::OrSymbol
        ).void
      end
      attr_writer :call_recording_channels

      # The audio file format for calls being recorded.
      sig do
        returns(
          T.nilable(
            Telnyx::OutboundCallRecording::CallRecordingFormat::OrSymbol
          )
        )
      end
      attr_reader :call_recording_format

      sig do
        params(
          call_recording_format:
            Telnyx::OutboundCallRecording::CallRecordingFormat::OrSymbol
        ).void
      end
      attr_writer :call_recording_format

      # Specifies which calls are recorded.
      sig do
        returns(
          T.nilable(Telnyx::OutboundCallRecording::CallRecordingType::OrSymbol)
        )
      end
      attr_reader :call_recording_type

      sig do
        params(
          call_recording_type:
            Telnyx::OutboundCallRecording::CallRecordingType::OrSymbol
        ).void
      end
      attr_writer :call_recording_type

      sig do
        params(
          call_recording_caller_phone_numbers: T::Array[String],
          call_recording_channels:
            Telnyx::OutboundCallRecording::CallRecordingChannels::OrSymbol,
          call_recording_format:
            Telnyx::OutboundCallRecording::CallRecordingFormat::OrSymbol,
          call_recording_type:
            Telnyx::OutboundCallRecording::CallRecordingType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When call_recording_type is 'by_caller_phone_number', only outbound calls using
        # one of these numbers will be recorded. Numbers must be specified in E164 format.
        call_recording_caller_phone_numbers: nil,
        # When using 'dual' channels, the final audio file will be a stereo recording with
        # the first leg on channel A, and the rest on channel B.
        call_recording_channels: nil,
        # The audio file format for calls being recorded.
        call_recording_format: nil,
        # Specifies which calls are recorded.
        call_recording_type: nil
      )
      end

      sig do
        override.returns(
          {
            call_recording_caller_phone_numbers: T::Array[String],
            call_recording_channels:
              Telnyx::OutboundCallRecording::CallRecordingChannels::OrSymbol,
            call_recording_format:
              Telnyx::OutboundCallRecording::CallRecordingFormat::OrSymbol,
            call_recording_type:
              Telnyx::OutboundCallRecording::CallRecordingType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # When using 'dual' channels, the final audio file will be a stereo recording with
      # the first leg on channel A, and the rest on channel B.
      module CallRecordingChannels
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OutboundCallRecording::CallRecordingChannels)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGLE =
          T.let(
            :single,
            Telnyx::OutboundCallRecording::CallRecordingChannels::TaggedSymbol
          )
        DUAL =
          T.let(
            :dual,
            Telnyx::OutboundCallRecording::CallRecordingChannels::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OutboundCallRecording::CallRecordingChannels::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The audio file format for calls being recorded.
      module CallRecordingFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OutboundCallRecording::CallRecordingFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WAV =
          T.let(
            :wav,
            Telnyx::OutboundCallRecording::CallRecordingFormat::TaggedSymbol
          )
        MP3 =
          T.let(
            :mp3,
            Telnyx::OutboundCallRecording::CallRecordingFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OutboundCallRecording::CallRecordingFormat::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specifies which calls are recorded.
      module CallRecordingType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OutboundCallRecording::CallRecordingType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :all,
            Telnyx::OutboundCallRecording::CallRecordingType::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Telnyx::OutboundCallRecording::CallRecordingType::TaggedSymbol
          )
        BY_CALLER_PHONE_NUMBER =
          T.let(
            :by_caller_phone_number,
            Telnyx::OutboundCallRecording::CallRecordingType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OutboundCallRecording::CallRecordingType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
