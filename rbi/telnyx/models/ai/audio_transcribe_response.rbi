# typed: strong

module Telnyx
  module Models
    module AI
      class AudioTranscribeResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AudioTranscribeResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The transcribed text for the audio file.
        sig { returns(String) }
        attr_accessor :text

        # The duration of the audio file in seconds. This is only included if
        # `response_format` is set to `verbose_json`.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # Segments of the transcribed text and their corresponding details. This is only
        # included if `response_format` is set to `verbose_json`.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Segment]
            )
          )
        end
        attr_reader :segments

        sig do
          params(
            segments:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Segment::OrHash
              ]
          ).void
        end
        attr_writer :segments

        sig do
          params(
            text: String,
            duration: Float,
            segments:
              T::Array[
                Telnyx::Models::AI::AudioTranscribeResponse::Segment::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The transcribed text for the audio file.
          text:,
          # The duration of the audio file in seconds. This is only included if
          # `response_format` is set to `verbose_json`.
          duration: nil,
          # Segments of the transcribed text and their corresponding details. This is only
          # included if `response_format` is set to `verbose_json`.
          segments: nil
        )
        end

        sig do
          override.returns(
            {
              text: String,
              duration: Float,
              segments:
                T::Array[Telnyx::Models::AI::AudioTranscribeResponse::Segment]
            }
          )
        end
        def to_hash
        end

        class Segment < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::AudioTranscribeResponse::Segment,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier of the segment.
          sig { returns(Float) }
          attr_accessor :id

          # End time of the segment in seconds.
          sig { returns(Float) }
          attr_accessor :end_

          # Start time of the segment in seconds.
          sig { returns(Float) }
          attr_accessor :start

          # Text content of the segment.
          sig { returns(String) }
          attr_accessor :text

          sig do
            params(id: Float, end_: Float, start: Float, text: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Unique identifier of the segment.
            id:,
            # End time of the segment in seconds.
            end_:,
            # Start time of the segment in seconds.
            start:,
            # Text content of the segment.
            text:
          )
          end

          sig do
            override.returns(
              { id: Float, end_: Float, start: Float, text: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
