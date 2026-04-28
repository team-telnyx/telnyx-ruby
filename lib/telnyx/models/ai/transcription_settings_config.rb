# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettingsConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute eager_eot_threshold
        #   Available only for deepgram/flux. Confidence threshold for eager end of turn
        #   detection. Must be lower than or equal to eot_threshold. Setting this equal to
        #   eot_threshold effectively disables eager end of turn.
        #
        #   @return [Float, nil]
        optional :eager_eot_threshold, Float

        # @!attribute end_of_turn_confidence_threshold
        #   Available only for assemblyai/universal-streaming. Confidence level required to
        #   trigger an end of turn. Higher values require more certainty before ending a
        #   turn.
        #
        #   @return [Float, nil]
        optional :end_of_turn_confidence_threshold, Float

        # @!attribute eot_threshold
        #   Available only for deepgram/flux. Confidence required to trigger an end of turn.
        #   Higher values = more reliable turn detection but slightly increased latency.
        #
        #   @return [Float, nil]
        optional :eot_threshold, Float

        # @!attribute eot_timeout_ms
        #   Available only for deepgram/flux. Maximum milliseconds of silence before forcing
        #   an end of turn, regardless of confidence.
        #
        #   @return [Integer, nil]
        optional :eot_timeout_ms, Integer

        # @!attribute keyterm
        #   Available only for deepgram/nova-3 and deepgram/flux. A comma-separated list of
        #   key terms to boost for recognition during transcription. Helps improve accuracy
        #   for domain-specific terminology, proper nouns, or uncommon words.
        #
        #   @return [String, nil]
        optional :keyterm, String

        # @!attribute max_turn_silence
        #   Available only for assemblyai/universal-streaming. Maximum duration of silence
        #   in milliseconds before forcing an end of turn.
        #
        #   @return [Integer, nil]
        optional :max_turn_silence, Integer

        # @!attribute min_turn_silence
        #   Available only for assemblyai/universal-streaming. Minimum duration of silence
        #   in milliseconds before a turn can end. Must be less than or equal to
        #   max_turn_silence.
        #
        #   @return [Integer, nil]
        optional :min_turn_silence, Integer

        # @!attribute numerals
        #
        #   @return [Boolean, nil]
        optional :numerals, Telnyx::Internal::Type::Boolean

        # @!attribute smart_format
        #
        #   @return [Boolean, nil]
        optional :smart_format, Telnyx::Internal::Type::Boolean

        # @!method initialize(eager_eot_threshold: nil, end_of_turn_confidence_threshold: nil, eot_threshold: nil, eot_timeout_ms: nil, keyterm: nil, max_turn_silence: nil, min_turn_silence: nil, numerals: nil, smart_format: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettingsConfig} for more details.
        #
        #   @param eager_eot_threshold [Float] Available only for deepgram/flux. Confidence threshold for eager end of turn det
        #
        #   @param end_of_turn_confidence_threshold [Float] Available only for assemblyai/universal-streaming. Confidence level required to
        #
        #   @param eot_threshold [Float] Available only for deepgram/flux. Confidence required to trigger an end of turn.
        #
        #   @param eot_timeout_ms [Integer] Available only for deepgram/flux. Maximum milliseconds of silence before forcing
        #
        #   @param keyterm [String] Available only for deepgram/nova-3 and deepgram/flux. A comma-separated list of
        #
        #   @param max_turn_silence [Integer] Available only for assemblyai/universal-streaming. Maximum duration of silence i
        #
        #   @param min_turn_silence [Integer] Available only for assemblyai/universal-streaming. Minimum duration of silence i
        #
        #   @param numerals [Boolean]
        #
        #   @param smart_format [Boolean]
      end
    end
  end
end
