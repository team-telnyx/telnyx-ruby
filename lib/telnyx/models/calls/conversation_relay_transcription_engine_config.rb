# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class ConversationRelayTranscriptionEngineConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute eager_eot_threshold
        #   Deepgram Flux: confidence at which an `eagerEndOfTurn` frame is sent before the
        #   final prompt, followed by `turnResumed` if the caller keeps talking. When
        #   omitted, these frames are not sent.
        #
        #   @return [Float, nil]
        optional :eager_eot_threshold, Float

        # @!attribute eot_threshold
        #   Deepgram Flux: confidence required to end the caller's turn.
        #
        #   @return [Float, nil]
        optional :eot_threshold, Float

        # @!attribute interim_results
        #   Deepgram Flux: send interim transcripts as `prompt` frames with `last: false`.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!method initialize(eager_eot_threshold: nil, eot_threshold: nil, interim_results: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ConversationRelayTranscriptionEngineConfig} for more
        #   details.
        #
        #   Engine-specific transcription settings for Conversation Relay. This accepts the
        #   same provider-specific options used by the Call Transcription Start command,
        #   such as `transcription_model`, without requiring the engine discriminator to be
        #   repeated inside this object. With Deepgram Flux (`deepgram/flux`),
        #   `interim_results`, `eot_threshold` and `eager_eot_threshold` control the interim
        #   prompts and the `eagerEndOfTurn` and `turnResumed` frames sent to your WebSocket
        #   server.
        #
        #   @param eager_eot_threshold [Float] Deepgram Flux: confidence at which an `eagerEndOfTurn` frame is sent before the
        #
        #   @param eot_threshold [Float] Deepgram Flux: confidence required to end the caller's turn.
        #
        #   @param interim_results [Boolean] Deepgram Flux: send interim transcripts as `prompt` frames with `last: false`.
      end
    end
  end
end
