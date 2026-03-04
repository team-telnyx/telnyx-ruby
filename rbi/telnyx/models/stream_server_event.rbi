# typed: strong

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for TTS streaming.
    module StreamServerEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::Models::StreamServerEvent::AudioChunk,
            Telnyx::Models::StreamServerEvent::Final,
            Telnyx::Models::StreamServerEvent::Error
          )
        end

      class AudioChunk < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::AudioChunk,
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

        # Frame type identifier.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::StreamServerEvent::AudioChunk::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::Models::StreamServerEvent::AudioChunk::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Server-to-client frame containing a base64-encoded audio chunk.
        sig do
          params(
            audio: T.nilable(String),
            cached: T::Boolean,
            is_final: T::Boolean,
            text: T.nilable(String),
            time_to_first_audio_frame_ms: Integer,
            type: Telnyx::Models::StreamServerEvent::AudioChunk::Type::OrSymbol
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
          time_to_first_audio_frame_ms: nil,
          # Frame type identifier.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              audio: T.nilable(String),
              cached: T::Boolean,
              is_final: T::Boolean,
              text: T.nilable(String),
              time_to_first_audio_frame_ms: Integer,
              type:
                Telnyx::Models::StreamServerEvent::AudioChunk::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Frame type identifier.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::StreamServerEvent::AudioChunk::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO_CHUNK =
            T.let(
              :audio_chunk,
              Telnyx::Models::StreamServerEvent::AudioChunk::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StreamServerEvent::AudioChunk::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Final < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::Final,
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
              Telnyx::Models::StreamServerEvent::Final::IsFinal::TaggedBoolean
            )
          )
        end
        attr_reader :is_final

        sig do
          params(
            is_final:
              Telnyx::Models::StreamServerEvent::Final::IsFinal::OrBoolean
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

        # Frame type identifier.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::StreamServerEvent::Final::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::Models::StreamServerEvent::Final::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Server-to-client frame indicating synthesis is complete for the current text.
        sig do
          params(
            audio: NilClass,
            is_final:
              Telnyx::Models::StreamServerEvent::Final::IsFinal::OrBoolean,
            text: String,
            time_to_first_audio_frame_ms: Integer,
            type: Telnyx::Models::StreamServerEvent::Final::Type::OrSymbol
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
          time_to_first_audio_frame_ms: nil,
          # Frame type identifier.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              audio: NilClass,
              is_final:
                Telnyx::Models::StreamServerEvent::Final::IsFinal::TaggedBoolean,
              text: String,
              time_to_first_audio_frame_ms: Integer,
              type: Telnyx::Models::StreamServerEvent::Final::Type::TaggedSymbol
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
                Telnyx::Models::StreamServerEvent::Final::IsFinal
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Models::StreamServerEvent::Final::IsFinal::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StreamServerEvent::Final::IsFinal::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Frame type identifier.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::StreamServerEvent::Final::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FINAL =
            T.let(
              :final,
              Telnyx::Models::StreamServerEvent::Final::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StreamServerEvent::Final::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Error < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StreamServerEvent::Error,
              Telnyx::Internal::AnyHash
            )
          end

        # Error message describing what went wrong.
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Frame type identifier.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::StreamServerEvent::Error::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::Models::StreamServerEvent::Error::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Server-to-client frame indicating an error during synthesis. The connection is
        # closed shortly after.
        sig do
          params(
            error: String,
            type: Telnyx::Models::StreamServerEvent::Error::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Error message describing what went wrong.
          error: nil,
          # Frame type identifier.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              error: String,
              type: Telnyx::Models::StreamServerEvent::Error::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Frame type identifier.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::StreamServerEvent::Error::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ERROR =
            T.let(
              :error,
              Telnyx::Models::StreamServerEvent::Error::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StreamServerEvent::Error::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
