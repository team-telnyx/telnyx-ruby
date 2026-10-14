# typed: strong

module Telnyx
  module Models
    module Calls
      class ConversationRelayTranscriptionEngineConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ConversationRelayTranscriptionEngineConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Deepgram Flux: confidence at which an `eagerEndOfTurn` frame is sent before the
        # final prompt, followed by `turnResumed` if the caller keeps talking. When
        # omitted, these frames are not sent.
        sig { returns(T.nilable(Float)) }
        attr_reader :eager_eot_threshold

        sig { params(eager_eot_threshold: Float).void }
        attr_writer :eager_eot_threshold

        # Deepgram Flux: confidence required to end the caller's turn.
        sig { returns(T.nilable(Float)) }
        attr_reader :eot_threshold

        sig { params(eot_threshold: Float).void }
        attr_writer :eot_threshold

        # Deepgram Flux: send interim transcripts as `prompt` frames with `last: false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interim_results

        sig { params(interim_results: T::Boolean).void }
        attr_writer :interim_results

        # Engine-specific transcription settings for Conversation Relay. This accepts the
        # same provider-specific options used by the Call Transcription Start command,
        # such as `transcription_model`, without requiring the engine discriminator to be
        # repeated inside this object. With Deepgram Flux (`deepgram/flux`),
        # `interim_results`, `eot_threshold` and `eager_eot_threshold` control the interim
        # prompts and the `eagerEndOfTurn` and `turnResumed` frames sent to your WebSocket
        # server.
        sig do
          params(
            eager_eot_threshold: Float,
            eot_threshold: Float,
            interim_results: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Deepgram Flux: confidence at which an `eagerEndOfTurn` frame is sent before the
          # final prompt, followed by `turnResumed` if the caller keeps talking. When
          # omitted, these frames are not sent.
          eager_eot_threshold: nil,
          # Deepgram Flux: confidence required to end the caller's turn.
          eot_threshold: nil,
          # Deepgram Flux: send interim transcripts as `prompt` frames with `last: false`.
          interim_results: nil
        )
        end

        sig do
          override.returns(
            {
              eager_eot_threshold: Float,
              eot_threshold: Float,
              interim_results: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
