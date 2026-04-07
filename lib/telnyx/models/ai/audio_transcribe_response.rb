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
        #   `distil-whisper/distil-large-v2` and `deepgram/nova-3` when `response_format` is
        #   `verbose_json`. Not returned by `openai/whisper-large-v3-turbo`.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute segments
        #   Segments of the transcribed text and their corresponding details. Returned by
        #   `distil-whisper/distil-large-v2` when `response_format` is `verbose_json`. Not
        #   returned by `openai/whisper-large-v3-turbo`.
        #
        #   @return [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>, nil]
        optional :segments,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::AudioTranscribeResponse::Segment] }

        # @!attribute words
        #   Word-level timestamps and optional speaker labels. Only returned by
        #   `deepgram/nova-3` when word-level output is enabled via `model_config`.
        #
        #   @return [Array<Telnyx::Models::AI::AudioTranscribeResponse::Word>, nil]
        optional :words, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::AudioTranscribeResponse::Word] }

        # @!method initialize(text:, duration: nil, segments: nil, words: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AudioTranscribeResponse} for more details.
        #
        #   Response fields vary by model. `distil-whisper/distil-large-v2` returns `text`,
        #   `duration`, and `segments` in `verbose_json` mode.
        #   `openai/whisper-large-v3-turbo` returns `text` only. `deepgram/nova-3` returns
        #   `text` and, depending on `model_config`, may include `words` with per-word
        #   timestamps and speaker labels.
        #
        #   @param text [String] The transcribed text for the audio file.
        #
        #   @param duration [Float] The duration of the audio file in seconds. Returned by `distil-whisper/distil-la
        #
        #   @param segments [Array<Telnyx::Models::AI::AudioTranscribeResponse::Segment>] Segments of the transcribed text and their corresponding details. Returned by `d
        #
        #   @param words [Array<Telnyx::Models::AI::AudioTranscribeResponse::Word>] Word-level timestamps and optional speaker labels. Only returned by `deepgram/no

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

        class Word < Telnyx::Internal::Type::BaseModel
          # @!attribute end_
          #   End time of the word in seconds.
          #
          #   @return [Float]
          required :end_, Float, api_name: :end

          # @!attribute start
          #   Start time of the word in seconds.
          #
          #   @return [Float]
          required :start, Float

          # @!attribute word
          #   The transcribed word.
          #
          #   @return [String]
          required :word, String

          # @!attribute confidence
          #   Confidence score for the word (0.0 to 1.0).
          #
          #   @return [Float, nil]
          optional :confidence, Float

          # @!attribute speaker
          #   Speaker index. Only present when diarization is enabled via `model_config`.
          #
          #   @return [Integer, nil]
          optional :speaker, Integer

          # @!method initialize(end_:, start:, word:, confidence: nil, speaker: nil)
          #   Word-level timing detail. Only present when using `deepgram/nova-3` with
          #   `model_config` options that enable word timestamps.
          #
          #   @param end_ [Float] End time of the word in seconds.
          #
          #   @param start [Float] Start time of the word in seconds.
          #
          #   @param word [String] The transcribed word.
          #
          #   @param confidence [Float] Confidence score for the word (0.0 to 1.0).
          #
          #   @param speaker [Integer] Speaker index. Only present when diarization is enabled via `model_config`.
        end
      end
    end
  end
end
