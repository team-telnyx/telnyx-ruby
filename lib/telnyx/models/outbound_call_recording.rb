# frozen_string_literal: true

module Telnyx
  module Models
    class OutboundCallRecording < Telnyx::Internal::Type::BaseModel
      # @!attribute call_recording_caller_phone_numbers
      #   When call_recording_type is 'by_caller_phone_number', only outbound calls using
      #   one of these numbers will be recorded. Numbers must be specified in E164 format.
      #
      #   @return [Array<String>, nil]
      optional :call_recording_caller_phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute call_recording_channels
      #   When using 'dual' channels, the final audio file will be a stereo recording with
      #   the first leg on channel A, and the rest on channel B.
      #
      #   @return [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingChannels, nil]
      optional :call_recording_channels, enum: -> { Telnyx::OutboundCallRecording::CallRecordingChannels }

      # @!attribute call_recording_format
      #   The audio file format for calls being recorded.
      #
      #   @return [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingFormat, nil]
      optional :call_recording_format, enum: -> { Telnyx::OutboundCallRecording::CallRecordingFormat }

      # @!attribute call_recording_type
      #   Specifies which calls are recorded.
      #
      #   @return [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingType, nil]
      optional :call_recording_type, enum: -> { Telnyx::OutboundCallRecording::CallRecordingType }

      # @!method initialize(call_recording_caller_phone_numbers: nil, call_recording_channels: nil, call_recording_format: nil, call_recording_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OutboundCallRecording} for more details.
      #
      #   @param call_recording_caller_phone_numbers [Array<String>] When call_recording_type is 'by_caller_phone_number', only outbound calls using
      #
      #   @param call_recording_channels [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingChannels] When using 'dual' channels, the final audio file will be a stereo recording with
      #
      #   @param call_recording_format [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingFormat] The audio file format for calls being recorded.
      #
      #   @param call_recording_type [Symbol, Telnyx::Models::OutboundCallRecording::CallRecordingType] Specifies which calls are recorded.

      # When using 'dual' channels, the final audio file will be a stereo recording with
      # the first leg on channel A, and the rest on channel B.
      #
      # @see Telnyx::Models::OutboundCallRecording#call_recording_channels
      module CallRecordingChannels
        extend Telnyx::Internal::Type::Enum

        SINGLE = :single
        DUAL = :dual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The audio file format for calls being recorded.
      #
      # @see Telnyx::Models::OutboundCallRecording#call_recording_format
      module CallRecordingFormat
        extend Telnyx::Internal::Type::Enum

        WAV = :wav
        MP3 = :mp3

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specifies which calls are recorded.
      #
      # @see Telnyx::Models::OutboundCallRecording#call_recording_type
      module CallRecordingType
        extend Telnyx::Internal::Type::Enum

        ALL = :all
        NONE = :none
        BY_CALLER_PHONE_NUMBER = :by_caller_phone_number

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
