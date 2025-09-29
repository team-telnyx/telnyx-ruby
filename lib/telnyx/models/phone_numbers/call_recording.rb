# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class CallRecording < Telnyx::Internal::Type::BaseModel
        # @!attribute inbound_call_recording_channels
        #   When using 'dual' channels, final audio file will be stereo recorded with the
        #   first leg on channel A, and the rest on channel B.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::CallRecording::InboundCallRecordingChannels, nil]
        optional :inbound_call_recording_channels,
                 enum: -> { Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingChannels }

        # @!attribute inbound_call_recording_enabled
        #   When enabled, any inbound call to this number will be recorded.
        #
        #   @return [Boolean, nil]
        optional :inbound_call_recording_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute inbound_call_recording_format
        #   The audio file format for calls being recorded.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::CallRecording::InboundCallRecordingFormat, nil]
        optional :inbound_call_recording_format,
                 enum: -> { Telnyx::PhoneNumbers::CallRecording::InboundCallRecordingFormat }

        # @!method initialize(inbound_call_recording_channels: nil, inbound_call_recording_enabled: nil, inbound_call_recording_format: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::CallRecording} for more details.
        #
        #   The call recording settings for a phone number.
        #
        #   @param inbound_call_recording_channels [Symbol, Telnyx::Models::PhoneNumbers::CallRecording::InboundCallRecordingChannels] When using 'dual' channels, final audio file will be stereo recorded with the fi
        #
        #   @param inbound_call_recording_enabled [Boolean] When enabled, any inbound call to this number will be recorded.
        #
        #   @param inbound_call_recording_format [Symbol, Telnyx::Models::PhoneNumbers::CallRecording::InboundCallRecordingFormat] The audio file format for calls being recorded.

        # When using 'dual' channels, final audio file will be stereo recorded with the
        # first leg on channel A, and the rest on channel B.
        #
        # @see Telnyx::Models::PhoneNumbers::CallRecording#inbound_call_recording_channels
        module InboundCallRecordingChannels
          extend Telnyx::Internal::Type::Enum

          SINGLE = :single
          DUAL = :dual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The audio file format for calls being recorded.
        #
        # @see Telnyx::Models::PhoneNumbers::CallRecording#inbound_call_recording_format
        module InboundCallRecordingFormat
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
