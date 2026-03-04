# frozen_string_literal: true

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for TTS streaming.
    module StreamServerEvent
      extend Telnyx::Internal::Type::Union

      discriminator :type

      # Server-to-client frame containing a base64-encoded audio chunk.
      variant :audio_chunk, -> { Telnyx::Models::StreamServerEvent::AudioChunk }

      # Server-to-client frame indicating synthesis is complete for the current text.
      variant :final, -> { Telnyx::Models::StreamServerEvent::Final }

      # Server-to-client frame indicating an error during synthesis. The connection is closed shortly after.
      variant :error, -> { Telnyx::Models::StreamServerEvent::Error }

      class AudioChunk < Telnyx::Internal::Type::BaseModel
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

        # @!attribute type
        #   Frame type identifier.
        #
        #   @return [Symbol, Telnyx::Models::StreamServerEvent::AudioChunk::Type, nil]
        optional :type, enum: -> { Telnyx::Models::StreamServerEvent::AudioChunk::Type }

        # @!method initialize(audio: nil, cached: nil, is_final: nil, text: nil, time_to_first_audio_frame_ms: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::StreamServerEvent::AudioChunk} for more details.
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
        #
        #   @param type [Symbol, Telnyx::Models::StreamServerEvent::AudioChunk::Type] Frame type identifier.

        # Frame type identifier.
        #
        # @see Telnyx::Models::StreamServerEvent::AudioChunk#type
        module Type
          extend Telnyx::Internal::Type::Enum

          AUDIO_CHUNK = :audio_chunk

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Final < Telnyx::Internal::Type::BaseModel
        # @!attribute audio
        #   Always `null` for the final frame.
        #
        #   @return [nil]
        optional :audio, NilClass

        # @!attribute is_final
        #   Always `true`.
        #
        #   @return [Boolean, Telnyx::Models::StreamServerEvent::Final::IsFinal, nil]
        optional :is_final, enum: -> { Telnyx::Models::StreamServerEvent::Final::IsFinal }, api_name: :isFinal

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

        # @!attribute type
        #   Frame type identifier.
        #
        #   @return [Symbol, Telnyx::Models::StreamServerEvent::Final::Type, nil]
        optional :type, enum: -> { Telnyx::Models::StreamServerEvent::Final::Type }

        # @!method initialize(audio: nil, is_final: nil, text: nil, time_to_first_audio_frame_ms: nil, type: nil)
        #   Server-to-client frame indicating synthesis is complete for the current text.
        #
        #   @param audio [nil] Always `null` for the final frame.
        #
        #   @param is_final [Boolean, Telnyx::Models::StreamServerEvent::Final::IsFinal] Always `true`.
        #
        #   @param text [String] Empty string.
        #
        #   @param time_to_first_audio_frame_ms [Integer] Present if this was the first response frame.
        #
        #   @param type [Symbol, Telnyx::Models::StreamServerEvent::Final::Type] Frame type identifier.

        # Always `true`.
        #
        # @see Telnyx::Models::StreamServerEvent::Final#is_final
        module IsFinal
          extend Telnyx::Internal::Type::Enum

          TRUE = true

          # @!method self.values
          #   @return [Array<Boolean>]
        end

        # Frame type identifier.
        #
        # @see Telnyx::Models::StreamServerEvent::Final#type
        module Type
          extend Telnyx::Internal::Type::Enum

          FINAL = :final

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Error < Telnyx::Internal::Type::BaseModel
        # @!attribute error
        #   Error message describing what went wrong.
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute type
        #   Frame type identifier.
        #
        #   @return [Symbol, Telnyx::Models::StreamServerEvent::Error::Type, nil]
        optional :type, enum: -> { Telnyx::Models::StreamServerEvent::Error::Type }

        # @!method initialize(error: nil, type: nil)
        #   Server-to-client frame indicating an error during synthesis. The connection is
        #   closed shortly after.
        #
        #   @param error [String] Error message describing what went wrong.
        #
        #   @param type [Symbol, Telnyx::Models::StreamServerEvent::Error::Type] Frame type identifier.

        # Frame type identifier.
        #
        # @see Telnyx::Models::StreamServerEvent::Error#type
        module Type
          extend Telnyx::Internal::Type::Enum

          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Telnyx::Models::StreamServerEvent::AudioChunk, Telnyx::Models::StreamServerEvent::Final, Telnyx::Models::StreamServerEvent::Error)]
    end
  end
end
