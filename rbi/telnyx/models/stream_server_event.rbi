# typed: strong

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for TTS streaming.
    module StreamServerEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::Models::StreamServerEvent::AudioChunkFrame,
            Telnyx::Models::StreamServerEvent::FinalFrame,
            Telnyx::Models::StreamServerEvent::ErrorFrame
          )
        end

      class AudioChunkFrame < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::AudioChunkFrame,
              Telnyx::Internal::AnyHash
            )
          end

        # Base64-encoded audio data. May be `null` for providers that use
        # `drop_concatenated_audio` mode (Telnyx Natural/NaturalHD, Rime, Minimax, MurfAI,
        # Resemble) — in that case only streamed chunks carry audio.
        sig { returns(T.nilable(String)) }
        attr_accessor :audio

        # Whether this audio was served from cache.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cached

        sig { params(cached: T::Boolean).void }
        attr_writer :cached

        # Always `false` for audio chunk frames.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_final

        sig { params(is_final: T::Boolean).void }
        attr_writer :is_final

        # The text segment that this audio chunk corresponds to.
        sig { returns(T.nilable(String)) }
        attr_accessor :text

        # Milliseconds from the start-of-speech request to the first audio frame. Only
        # present on the first audio chunk of a synthesis request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_to_first_audio_frame_ms

        sig { params(time_to_first_audio_frame_ms: Integer).void }
        attr_writer :time_to_first_audio_frame_ms

        # Server-to-client frame containing a base64-encoded audio chunk.
        sig do
          params(
            audio: T.nilable(String),
            cached: T::Boolean,
            is_final: T::Boolean,
            text: T.nilable(String),
            time_to_first_audio_frame_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64-encoded audio data. May be `null` for providers that use
          # `drop_concatenated_audio` mode (Telnyx Natural/NaturalHD, Rime, Minimax, MurfAI,
          # Resemble) — in that case only streamed chunks carry audio.
          audio: nil,
          # Whether this audio was served from cache.
          cached: nil,
          # Always `false` for audio chunk frames.
          is_final: nil,
          # The text segment that this audio chunk corresponds to.
          text: nil,
          # Milliseconds from the start-of-speech request to the first audio frame. Only
          # present on the first audio chunk of a synthesis request.
          time_to_first_audio_frame_ms: nil
        )
        end

        sig do
          override.returns(
            {
              audio: T.nilable(String),
              cached: T::Boolean,
              is_final: T::Boolean,
              text: T.nilable(String),
              time_to_first_audio_frame_ms: Integer
            }
          )
        end
        def to_hash
        end
      end

      class FinalFrame < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::FinalFrame,
              Telnyx::Internal::AnyHash
            )
          end

        # Always `null` for the final frame.
        sig { returns(NilClass) }
        attr_accessor :audio

        # Always `true`.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::TaggedBoolean
            )
          )
        end
        attr_reader :is_final

        sig do
          params(
            is_final:
              Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::OrBoolean
          ).void
        end
        attr_writer :is_final

        # Empty string.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        # Present if this was the first response frame.
        sig { returns(T.nilable(Integer)) }
        attr_reader :time_to_first_audio_frame_ms

        sig { params(time_to_first_audio_frame_ms: Integer).void }
        attr_writer :time_to_first_audio_frame_ms

        # Server-to-client frame indicating synthesis is complete for the current text.
        sig do
          params(
            audio: NilClass,
            is_final:
              Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::OrBoolean,
            text: String,
            time_to_first_audio_frame_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Always `null` for the final frame.
          audio: nil,
          # Always `true`.
          is_final: nil,
          # Empty string.
          text: nil,
          # Present if this was the first response frame.
          time_to_first_audio_frame_ms: nil
        )
        end

        sig do
          override.returns(
            {
              audio: NilClass,
              is_final:
                Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::TaggedBoolean,
              text: String,
              time_to_first_audio_frame_ms: Integer
            }
          )
        end
        def to_hash
        end

        # Always `true`.
        module IsFinal
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StreamServerEvent::FinalFrame::IsFinal::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end
      end

      class ErrorFrame < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::ErrorFrame,
              Telnyx::Internal::AnyHash
            )
          end

        # Error message describing what went wrong.
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Server-to-client frame indicating an error during synthesis. The connection is
        # closed shortly after.
        sig { params(error: String).returns(T.attached_class) }
        def self.new(
          # Error message describing what went wrong.
          error: nil
        )
        end

        sig { override.returns({ error: String }) }
        def to_hash
        end
      end

      sig do
        override.returns(T::Array[Telnyx::Models::StreamServerEvent::Variants])
      end
      def self.variants
      end
    end
  end
end
