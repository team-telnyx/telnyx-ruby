# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionEndpointingPlan < Telnyx::Internal::Type::BaseModel
        # @!attribute on_no_punctuation_seconds
        #   Seconds to wait after the transcript ends without punctuation.
        #
        #   @return [Float, nil]
        optional :on_no_punctuation_seconds, Float

        # @!attribute on_number_seconds
        #   Seconds to wait after the transcript ends with a number.
        #
        #   @return [Float, nil]
        optional :on_number_seconds, Float

        # @!attribute on_punctuation_seconds
        #   Seconds to wait after the transcript ends with punctuation.
        #
        #   @return [Float, nil]
        optional :on_punctuation_seconds, Float

        # @!method initialize(on_no_punctuation_seconds: nil, on_number_seconds: nil, on_punctuation_seconds: nil)
        #   Endpointing thresholds used to decide when the user has finished speaking.
        #   Applies to non turn-taking transcription models. For `deepgram/flux`, use
        #   `transcription.settings.eot_threshold` / `eot_timeout_ms` /
        #   `eager_eot_threshold`.
        #
        #   @param on_no_punctuation_seconds [Float] Seconds to wait after the transcript ends without punctuation.
        #
        #   @param on_number_seconds [Float] Seconds to wait after the transcript ends with a number.
        #
        #   @param on_punctuation_seconds [Float] Seconds to wait after the transcript ends with punctuation.
      end
    end
  end
end
