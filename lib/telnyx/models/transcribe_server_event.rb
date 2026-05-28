# frozen_string_literal: true

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for STT streaming.
    module TranscribeServerEvent
      extend Telnyx::Internal::Type::Union

      discriminator :type

      # Server-to-client frame containing a transcription result.
      variant :transcript, -> { Telnyx::Models::TranscribeServerEvent::Transcript }

      # Server-to-client frame indicating an error during transcription. The connection may be closed shortly after.
      variant :error, -> { Telnyx::Models::TranscribeServerEvent::Error }

      class Transcript < Telnyx::Internal::Type::BaseModel
        # @!attribute transcript
        #   The transcribed text from the audio.
        #
        #   @return [String]
        required :transcript, String

        # @!attribute type
        #   Frame type identifier.
        #
        #   @return [Symbol, :transcript]
        required :type, const: :transcript

        # @!attribute confidence
        #   Confidence score of the transcription, ranging from 0 to 1.
        #
        #   @return [Float, nil]
        optional :confidence, Float

        # @!attribute is_final
        #   Whether this is a final transcription result. When `false`, this is an interim
        #   result that may be refined.
        #
        #   @return [Boolean, nil]
        optional :is_final, Telnyx::Internal::Type::Boolean

        # @!method initialize(transcript:, confidence: nil, is_final: nil, type: :transcript)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TranscribeServerEvent::Transcript} for more details.
        #
        #   Server-to-client frame containing a transcription result.
        #
        #   @param transcript [String] The transcribed text from the audio.
        #
        #   @param confidence [Float] Confidence score of the transcription, ranging from 0 to 1.
        #
        #   @param is_final [Boolean] Whether this is a final transcription result. When `false`, this is an interim r
        #
        #   @param type [Symbol, :transcript] Frame type identifier.
      end

      class Error < Telnyx::Internal::Type::BaseModel
        # @!attribute error
        #   Error message describing what went wrong.
        #
        #   @return [String]
        required :error, String

        # @!attribute type
        #   Frame type identifier.
        #
        #   @return [Symbol, :error]
        required :type, const: :error

        # @!method initialize(error:, type: :error)
        #   Server-to-client frame indicating an error during transcription. The connection
        #   may be closed shortly after.
        #
        #   @param error [String] Error message describing what went wrong.
        #
        #   @param type [Symbol, :error] Frame type identifier.
      end

      # @!method self.variants
      #   @return [Array(Telnyx::Models::TranscribeServerEvent::Transcript, Telnyx::Models::TranscribeServerEvent::Error)]
    end
  end
end
