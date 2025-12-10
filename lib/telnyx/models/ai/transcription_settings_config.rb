# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettingsConfig < Telnyx::Internal::Type::BaseModel
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

        # @!attribute numerals
        #
        #   @return [Boolean, nil]
        optional :numerals, Telnyx::Internal::Type::Boolean

        # @!attribute smart_format
        #
        #   @return [Boolean, nil]
        optional :smart_format, Telnyx::Internal::Type::Boolean

        # @!method initialize(eot_threshold: nil, eot_timeout_ms: nil, numerals: nil, smart_format: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettingsConfig} for more details.
        #
        #   @param eot_threshold [Float] Available only for deepgram/flux. Confidence required to trigger an end of turn.
        #
        #   @param eot_timeout_ms [Integer] Available only for deepgram/flux. Maximum milliseconds of silence before forcing
        #
        #   @param numerals [Boolean]
        #
        #   @param smart_format [Boolean]
      end
    end
  end
end
