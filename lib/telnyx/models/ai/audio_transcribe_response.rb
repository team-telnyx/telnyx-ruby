# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Audio#transcribe
      class AudioTranscribeResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute text
        #   The transcribed text for the audio file.
        #
        #   @return [String]
        required :text, String

        # @!attribute duration
        #   The duration of the audio file in seconds. This is only included if
        #   `response_format` is set to `verbose_json`.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute segments
        #   Segments of the transcribed text and their corresponding details. This is only
        #   included if `response_format` is set to `verbose_json`.
        #
        #   @return [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>, nil]
        optional :segments,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::AudioTranscribeResponse::Segment] }

        # @!method initialize(text:, duration: nil, segments: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AudioTranscribeResponse} for more details.
        #
        #   @param text [String] The transcribed text for the audio file.
        #
        #   @param duration [Float] The duration of the audio file in seconds. This is only included if `response_fo
        #
        #   @param segments [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>] Segments of the transcribed text and their corresponding details. This is only i

        class Segment < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier of the segment.
          #
          #   @return [Float]
          required :id, Float

          # @!attribute end_
          #   End time of the segment in seconds.
          #
          #   @return [Float]
          required :end_, Float, api_name: :end

          # @!attribute start
          #   Start time of the segment in seconds.
          #
          #   @return [Float]
          required :start, Float

          # @!attribute text
          #   Text content of the segment.
          #
          #   @return [String]
          required :text, String

          # @!method initialize(id:, end_:, start:, text:)
          #   @param id [Float] Unique identifier of the segment.
          #
          #   @param end_ [Float] End time of the segment in seconds.
          #
          #   @param start [Float] Start time of the segment in seconds.
          #
          #   @param text [String] Text content of the segment.
        end
      end
    end
  end
end
