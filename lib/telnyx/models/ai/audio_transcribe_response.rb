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
        #   The duration of the audio file in seconds. Returned by
        #   `distil-whisper/distil-large-v2` and the `deepgram/*` models when
        #   `response_format` is `verbose_json`. Not returned by
        #   `openai/whisper-large-v3-turbo`.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute segments
        #   Segments of the transcribed text and their corresponding details. Returned by
        #   `distil-whisper/distil-large-v2` and the `deepgram/*` models when
        #   `response_format` is `verbose_json`; Deepgram segments also carry nested `words`
        #   and `speakers`. Not returned by `openai/whisper-large-v3-turbo`.
        #
        #   @return [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>, nil]
        optional :segments,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::AudioTranscribeResponse::Segment] }

        # @!attribute words
        #   Word-level timestamps and optional speaker labels. Only returned by the
        #   `deepgram/*` models when word-level output is enabled via `model_config`.
        #
        #   @return [Array<Telnyx::Models::AI::AudioTranscriptionResponseWord>, nil]
        optional :words, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AudioTranscriptionResponseWord] }

        # @!method initialize(text:, duration: nil, segments: nil, words: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AudioTranscribeResponse} for more details.
        #
        #   Response fields vary by model. `distil-whisper/distil-large-v2` returns `text`,
        #   `duration`, and `segments` in `verbose_json` mode.
        #   `openai/whisper-large-v3-turbo` returns `text` only. The `deepgram/*` models
        #   return `text` and, depending on `model_config`, may include `words` with
        #   per-word timestamps and speaker labels.
        #
        #   @param text [String] The transcribed text for the audio file.
        #
        #   @param duration [Float] The duration of the audio file in seconds. Returned by `distil-whisper/distil-la
        #
        #   @param segments [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>] Segments of the transcribed text and their corresponding details. Returned by `d
        #
        #   @param words [Array<Telnyx::Models::AI::AudioTranscriptionResponseWord>] Word-level timestamps and optional speaker labels. Only returned by the `deepgra

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

          # @!attribute speakers
          #   Speaker indices heard in this segment. Returned by the `deepgram/*` models when
          #   `diarize` is enabled via `model_config`.
          #
          #   @return [Array<Integer>, nil]
          optional :speakers, Telnyx::Internal::Type::ArrayOf[Integer]

          # @!attribute words
          #   Word-level timing detail for this segment. Returned by the `deepgram/*` models
          #   when word-level output is enabled via `model_config`.
          #
          #   @return [Array<Telnyx::Models::AI::AudioTranscriptionResponseWord>, nil]
          optional :words, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AudioTranscriptionResponseWord] }

          # @!method initialize(id:, end_:, start:, text:, speakers: nil, words: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AudioTranscribeResponse::Segment} for more details.
          #
          #   @param id [Float] Unique identifier of the segment.
          #
          #   @param end_ [Float] End time of the segment in seconds.
          #
          #   @param start [Float] Start time of the segment in seconds.
          #
          #   @param text [String] Text content of the segment.
          #
          #   @param speakers [Array<Integer>] Speaker indices heard in this segment. Returned by the `deepgram/*` models when
          #
          #   @param words [Array<Telnyx::Models::AI::AudioTranscriptionResponseWord>] Word-level timing detail for this segment. Returned by the `deepgram/*` models w
        end
      end
    end
  end
end
