# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CallRecording < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::CallRecording,
              Telnyx::Internal::AnyHash
            )
          end

        # When using 'dual' channels, final audio file will be stereo recorded with the
        # first leg on channel A, and the rest on channel B.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::OrSymbol
            )
          )
        end
        attr_reader :inbound_call_recording_channels

        sig do
          params(
            inbound_call_recording_channels:
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::OrSymbol
          ).void
        end
        attr_writer :inbound_call_recording_channels

        # When enabled, any inbound call to this number will be recorded.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :inbound_call_recording_enabled

        sig { params(inbound_call_recording_enabled: T::Boolean).void }
        attr_writer :inbound_call_recording_enabled

        # The audio file format for calls being recorded.
        sig do
          returns(
            T.nilable(
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::OrSymbol
            )
          )
        end
        attr_reader :inbound_call_recording_format

        sig do
          params(
            inbound_call_recording_format:
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::OrSymbol
          ).void
        end
        attr_writer :inbound_call_recording_format

        # The call recording settings for a phone number.
        sig do
          params(
            inbound_call_recording_channels:
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::OrSymbol,
            inbound_call_recording_enabled: T::Boolean,
            inbound_call_recording_format:
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # When using 'dual' channels, final audio file will be stereo recorded with the
          # first leg on channel A, and the rest on channel B.
          inbound_call_recording_channels: nil,
          # When enabled, any inbound call to this number will be recorded.
          inbound_call_recording_enabled: nil,
          # The audio file format for calls being recorded.
          inbound_call_recording_format: nil
        )
        end

        sig do
          override.returns(
            {
              inbound_call_recording_channels:
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::OrSymbol,
              inbound_call_recording_enabled: T::Boolean,
              inbound_call_recording_format:
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::OrSymbol
            }
          )
        end
        def to_hash
        end

        # When using 'dual' channels, final audio file will be stereo recorded with the
        # first leg on channel A, and the rest on channel B.
        module InboundCallRecordingChannels
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The audio file format for calls being recorded.
        module InboundCallRecordingFormat
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat::TaggedSymbol
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
