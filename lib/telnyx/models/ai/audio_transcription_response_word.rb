# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class AudioTranscriptionResponseWord < Telnyx::Internal::Type::BaseModel
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

        # @!attribute punctuated_word
        #   The transcribed word with punctuation and capitalisation applied. Only present
        #   when `punctuate` or `smart_format` is enabled via `model_config`.
        #
        #   @return [String, nil]
        optional :punctuated_word, String

        # @!attribute speaker
        #   Speaker index. Only present when diarization is enabled via `model_config`.
        #
        #   @return [Integer, nil]
        optional :speaker, Integer

        # @!attribute speaker_confidence
        #   Confidence score for the speaker assignment (0.0 to 1.0). Only present when
        #   diarization is enabled via `model_config`.
        #
        #   @return [Float, nil]
        optional :speaker_confidence, Float

        # @!method initialize(end_:, start:, word:, confidence: nil, punctuated_word: nil, speaker: nil, speaker_confidence: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AudioTranscriptionResponseWord} for more details.
        #
        #   Word-level timing detail. Only present when using a `deepgram/*` model with
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
        #   @param punctuated_word [String] The transcribed word with punctuation and capitalisation applied. Only present w
        #
        #   @param speaker [Integer] Speaker index. Only present when diarization is enabled via `model_config`.
        #
        #   @param speaker_confidence [Float] Confidence score for the speaker assignment (0.0 to 1.0). Only present when diar
      end
    end
  end
end
