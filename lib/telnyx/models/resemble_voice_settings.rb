# frozen_string_literal: true

module Telnyx
  module Models
    class ResembleVoiceSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute type
      #   Voice settings provider type
      #
      #   @return [Symbol, Telnyx::Models::ResembleVoiceSettings::Type]
      required :type, enum: -> { Telnyx::ResembleVoiceSettings::Type }

      # @!attribute file_format
      #   Output audio format.
      #
      #   @return [Symbol, Telnyx::Models::ResembleVoiceSettings::Format, nil]
      optional :file_format, enum: -> { Telnyx::ResembleVoiceSettings::Format }, api_name: :format

      # @!attribute precision
      #   Audio precision format.
      #
      #   @return [Symbol, Telnyx::Models::ResembleVoiceSettings::Precision, nil]
      optional :precision, enum: -> { Telnyx::ResembleVoiceSettings::Precision }

      # @!attribute sample_rate
      #   Audio sample rate in Hz.
      #
      #   @return [Symbol, Telnyx::Models::ResembleVoiceSettings::SampleRate, nil]
      optional :sample_rate, enum: -> { Telnyx::ResembleVoiceSettings::SampleRate }

      # @!method initialize(type:, file_format: nil, precision: nil, sample_rate: nil)
      #   @param type [Symbol, Telnyx::Models::ResembleVoiceSettings::Type] Voice settings provider type
      #
      #   @param file_format [Symbol, Telnyx::Models::ResembleVoiceSettings::Format] Output audio format.
      #
      #   @param precision [Symbol, Telnyx::Models::ResembleVoiceSettings::Precision] Audio precision format.
      #
      #   @param sample_rate [Symbol, Telnyx::Models::ResembleVoiceSettings::SampleRate] Audio sample rate in Hz.

      # Voice settings provider type
      #
      # @see Telnyx::Models::ResembleVoiceSettings#type
      module Type
        extend Telnyx::Internal::Type::Enum

        RESEMBLE = :resemble

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Output audio format.
      #
      # @see Telnyx::Models::ResembleVoiceSettings#file_format
      module Format
        extend Telnyx::Internal::Type::Enum

        WAV = :wav
        MP3 = :mp3

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Audio precision format.
      #
      # @see Telnyx::Models::ResembleVoiceSettings#precision
      module Precision
        extend Telnyx::Internal::Type::Enum

        PCM_16 = :PCM_16
        PCM_24 = :PCM_24
        PCM_32 = :PCM_32
        MULAW = :MULAW

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Audio sample rate in Hz.
      #
      # @see Telnyx::Models::ResembleVoiceSettings#sample_rate
      module SampleRate
        extend Telnyx::Internal::Type::Enum

        SAMPLE_RATE_8000 = :"8000"
        SAMPLE_RATE_16000 = :"16000"
        SAMPLE_RATE_22050 = :"22050"
        SAMPLE_RATE_32000 = :"32000"
        SAMPLE_RATE_44100 = :"44100"
        SAMPLE_RATE_48000 = :"48000"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
