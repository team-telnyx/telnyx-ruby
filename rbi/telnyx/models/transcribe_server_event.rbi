# typed: strong

module Telnyx
  module Models
    # Union of all server-to-client WebSocket events for STT streaming.
    module TranscribeServerEvent
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::Models::TranscribeServerEvent::Transcript,
            Telnyx::Models::TranscribeServerEvent::Error
          )
        end

      class Transcript < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TranscribeServerEvent::Transcript,
              Telnyx::Internal::AnyHash
            )
          end

        # The transcribed text from the audio.
        sig { returns(String) }
        attr_accessor :transcript

        # Frame type identifier.
        sig { returns(Symbol) }
        attr_accessor :type

        # Confidence score of the transcription, ranging from 0 to 1.
        sig { returns(T.nilable(Float)) }
        attr_reader :confidence

        sig { params(confidence: Float).void }
        attr_writer :confidence

        # Whether this is a final transcription result. When `false`, this is an interim
        # result that may be refined.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_final

        sig { params(is_final: T::Boolean).void }
        attr_writer :is_final

        # Server-to-client frame containing a transcription result.
        sig do
          params(
            transcript: String,
            confidence: Float,
            is_final: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The transcribed text from the audio.
          transcript:,
          # Confidence score of the transcription, ranging from 0 to 1.
          confidence: nil,
          # Whether this is a final transcription result. When `false`, this is an interim
          # result that may be refined.
          is_final: nil,
          # Frame type identifier.
          type: :transcript
        )
        end

        sig do
          override.returns(
            {
              transcript: String,
              type: Symbol,
              confidence: Float,
              is_final: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Error < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TranscribeServerEvent::Error,
              Telnyx::Internal::AnyHash
            )
          end

        # Error message describing what went wrong.
        sig { returns(String) }
        attr_accessor :error

        # Frame type identifier.
        sig { returns(Symbol) }
        attr_accessor :type

        # Server-to-client frame indicating an error during transcription. The connection
        # may be closed shortly after.
        sig { params(error: String, type: Symbol).returns(T.attached_class) }
        def self.new(
          # Error message describing what went wrong.
          error:,
          # Frame type identifier.
          type: :error
        )
        end

        sig { override.returns({ error: String, type: Symbol }) }
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Telnyx::Models::TranscribeServerEvent::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
