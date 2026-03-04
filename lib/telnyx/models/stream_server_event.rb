# frozen_string_literal: true

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for TTS streaming.
    module StreamServerEvent
      extend Telnyx::Internal::Type::Union

      # Server-to-client frame containing a base64-encoded audio chunk.
      variant -> { Telnyx::Models::StreamServerEvent::AudioChunkFrame }

      # Server-to-client frame indicating synthesis is complete for the current text.
      variant -> { Telnyx::Models::StreamServerEvent::FinalFrame }

      # Server-to-client frame indicating an error during synthesis. The connection is closed shortly after.
      variant -> { Telnyx::Models::StreamServerEvent::ErrorFrame }

      class AudioChunkFrame < Telnyx::Internal::Type::BaseModel
        # @!attribute audio
        #   Base64-encoded audio data. May be `null` for providers that use
        #   `drop_concatenated_audio` mode (Telnyx Natural/NaturalHD, Rime, Minimax, MurfAI,
        #   Resemble) — in that case only streamed chunks carry audio.
        #
        #   @return [String, nil]
        optional :audio, String, nil?: true

        # @!attribute cached
        #   Whether this audio was served from cache.
        #
        #   @return [Boolean, nil]
        optional :cached, Telnyx::Internal::Type::Boolean

        # @!attribute is_final
        #   Always `false` for audio chunk frames.
        #
        #   @return [Boolean, nil]
        optional :is_final, Telnyx::Internal::Type::Boolean, api_name: :isFinal

        # @!attribute text
        #   The text segment that this audio chunk corresponds to.
        #
        #   @return [String, nil]
        optional :text, String, nil?: true

        # @!attribute time_to_first_audio_frame_ms
        #   Milliseconds from the start-of-speech request to the first audio frame. Only
        #   present on the first audio chunk of a synthesis request.
        #
        #   @return [Integer, nil]
        optional :time_to_first_audio_frame_ms, Integer, api_name: :timeToFirstAudioFrameMs

        # @!method initialize(audio: nil, cached: nil, is_final: nil, text: nil, time_to_first_audio_frame_ms: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::StreamServerEvent::AudioChunkFrame} for more details.
        #
        #   Server-to-client frame containing a base64-encoded audio chunk.
        #
        #   @param audio [String, nil] Base64-encoded audio data. May be `null` for providers that use `drop_concatenat
        #
        #   @param cached [Boolean] Whether this audio was served from cache.
        #
        #   @param is_final [Boolean] Always `false` for audio chunk frames.
        #
        #   @param text [String, nil] The text segment that this audio chunk corresponds to.
        #
        #   @param time_to_first_audio_frame_ms [Integer] Milliseconds from the start-of-speech request to the first audio frame. Only pre
      end

      class FinalFrame < Telnyx::Internal::Type::BaseModel
        # @!attribute audio
        #   Always `null` for the final frame.
        #
        #   @return [nil]
        optional :audio, NilClass

        # @!attribute is_final
        #   Always `true`.
        #
        #   @return [Boolean, Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal, nil]
        optional :is_final,
                 enum: -> { Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal },
                 api_name: :isFinal

        # @!attribute text
        #   Empty string.
        #
        #   @return [String, nil]
        optional :text, String

        # @!attribute time_to_first_audio_frame_ms
        #   Present if this was the first response frame.
        #
        #   @return [Integer, nil]
        optional :time_to_first_audio_frame_ms, Integer, api_name: :timeToFirstAudioFrameMs

        # @!method initialize(audio: nil, is_final: nil, text: nil, time_to_first_audio_frame_ms: nil)
        #   Server-to-client frame indicating synthesis is complete for the current text.
        #
        #   @param audio [nil] Always `null` for the final frame.
        #
        #   @param is_final [Boolean, Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal] Always `true`.
        #
        #   @param text [String] Empty string.
        #
        #   @param time_to_first_audio_frame_ms [Integer] Present if this was the first response frame.

        # Always `true`.
        #
        # @see Telnyx::Models::StreamServerEvent::FinalFrame#is_final
        module IsFinal
          extend Telnyx::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end
      end

      class ErrorFrame < Telnyx::Internal::Type::BaseModel
        # @!attribute error
        #   Error message describing what went wrong.
        #
        #   @return [String, nil]
        optional :error, String

        # @!method initialize(error: nil)
        #   Server-to-client frame indicating an error during synthesis. The connection is
        #   closed shortly after.
        #
        #   @param error [String] Error message describing what went wrong.
      end

      # @!method self.variants
      #   @return [Array(Telnyx::Models::StreamServerEvent::AudioChunkFrame, Telnyx::Models::StreamServerEvent::FinalFrame, Telnyx::Models::StreamServerEvent::ErrorFrame)]
    end
  end
end
