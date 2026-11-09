# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MeetingSessions#retrieve_transcript
    class MeetingSessionRetrieveTranscriptResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta]
      required :meta, -> { Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data>]
      #   @param meta [Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute confidence
        #
        #   @return [Float, nil]
        required :confidence, Float, nil?: true

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute relative_ts
        #
        #   @return [Float, nil]
        required :relative_ts, Float, nil?: true

        # @!attribute seq
        #   Monotonic transcript append cursor. This is separate from the event-history
        #   cursor and does not establish conversational turn order.
        #
        #   @return [Integer]
        required :seq, Integer

        # @!attribute speaker_label
        #   Recorded participant or bot label, or null when unavailable. Labels are
        #   attribution, not verified identity. Segments from concurrent speakers can
        #   finalize in a different order from the conversation.
        #
        #   @return [String, nil]
        required :speaker_label, String, nil?: true

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!method initialize(confidence:, occurred_at:, relative_ts:, seq:, speaker_label:, text:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Data} for more
        #   details.
        #
        #   @param confidence [Float, nil]
        #
        #   @param occurred_at [Time]
        #
        #   @param relative_ts [Float, nil]
        #
        #   @param seq [Integer] Monotonic transcript append cursor. This is separate from the event-history curs
        #
        #   @param speaker_label [String, nil] Recorded participant or bot label, or null when unavailable. Labels are attribut
        #
        #   @param text [String]
      end

      # @see Telnyx::Models::MeetingSessionRetrieveTranscriptResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute next_after
        #   Cursor to pass as `after` on the next request, or null when the response
        #   contains no segments.
        #
        #   @return [Integer, nil]
        required :next_after, Integer, nil?: true

        # @!method initialize(next_after:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessionRetrieveTranscriptResponse::Meta} for more
        #   details.
        #
        #   @param next_after [Integer, nil] Cursor to pass as `after` on the next request, or null when the response contain
      end
    end
  end
end
