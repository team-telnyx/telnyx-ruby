# typed: strong

module Telnyx
  module Models
    class MeetingSessionRetrieveTranscriptResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionRetrieveTranscriptResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig do
        returns(Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta)
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data::OrHash
            ],
          meta:
            Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data
              ],
            meta: Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_accessor :confidence

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(T.nilable(Float)) }
        attr_accessor :relative_ts

        # Monotonic transcript append cursor. This is separate from the event-history
        # cursor and does not establish conversational turn order.
        sig { returns(Integer) }
        attr_accessor :seq

        # Recorded participant or bot label, or null when unavailable. Labels are
        # attribution, not verified identity. Segments from concurrent speakers can
        # finalize in a different order from the conversation.
        sig { returns(T.nilable(String)) }
        attr_accessor :speaker_label

        sig { returns(String) }
        attr_accessor :text

        sig do
          params(
            confidence: T.nilable(Float),
            occurred_at: Time,
            relative_ts: T.nilable(Float),
            seq: Integer,
            speaker_label: T.nilable(String),
            text: String
          ).returns(T.attached_class)
        end
        def self.new(
          confidence:,
          occurred_at:,
          relative_ts:,
          # Monotonic transcript append cursor. This is separate from the event-history
          # cursor and does not establish conversational turn order.
          seq:,
          # Recorded participant or bot label, or null when unavailable. Labels are
          # attribution, not verified identity. Segments from concurrent speakers can
          # finalize in a different order from the conversation.
          speaker_label:,
          text:
        )
        end

        sig do
          override.returns(
            {
              confidence: T.nilable(Float),
              occurred_at: Time,
              relative_ts: T.nilable(Float),
              seq: Integer,
              speaker_label: T.nilable(String),
              text: String
            }
          )
        end
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Cursor to pass as `after` on the next request, or null when the response
        # contains no segments.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :next_after

        sig { params(next_after: T.nilable(Integer)).returns(T.attached_class) }
        def self.new(
          # Cursor to pass as `after` on the next request, or null when the response
          # contains no segments.
          next_after:
        )
        end

        sig { override.returns({ next_after: T.nilable(Integer) }) }
        def to_hash
        end
      end
    end
  end
end
