# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineSonioxConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute transcription_engine
        #   Engine identifier for Soniox transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine]
        required :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine }

        # @!attribute enable_endpoint_detection
        #   When true, Soniox emits end-of-utterance events at the cadence configured by
        #   `max_endpoint_delay_ms`.
        #
        #   @return [Boolean, nil]
        optional :enable_endpoint_detection, Telnyx::Internal::Type::Boolean

        # @!attribute interim_results
        #   Whether to send also interim results. If set to false, only final results will
        #   be sent.
        #
        #   @return [Boolean, nil]
        optional :interim_results, Telnyx::Internal::Type::Boolean

        # @!attribute language
        #   ISO 639-1 language hint (e.g. `en`, `es`), or `auto` to omit the hint and let
        #   Soniox auto-detect supported languages multilingually.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute max_endpoint_delay_ms
        #   Maximum silence (in milliseconds) before Soniox emits an end-of-utterance event.
        #   Only honored when `enable_endpoint_detection` is true. Range: 500-3000 ms.
        #
        #   @return [Integer, nil]
        optional :max_endpoint_delay_ms, Integer

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel, nil]
        optional :transcription_model,
                 enum: -> { Telnyx::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel }

        # @!method initialize(transcription_engine:, enable_endpoint_detection: nil, interim_results: nil, language: nil, max_endpoint_delay_ms: nil, transcription_model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineSonioxConfig} for more details.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig::TranscriptionEngine] Engine identifier for Soniox transcription service
        #
        #   @param enable_endpoint_detection [Boolean] When true, Soniox emits end-of-utterance events at the cadence configured by `ma
        #
        #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
        #
        #   @param language [String] ISO 639-1 language hint (e.g. `en`, `es`), or `auto` to omit the hint and let So
        #
        #   @param max_endpoint_delay_ms [Integer] Maximum silence (in milliseconds) before Soniox emits an end-of-utterance event.
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig::TranscriptionModel] The model to use for transcription.

        # Engine identifier for Soniox transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSonioxConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          SONIOX = :Soniox

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineSonioxConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          SONIOX_STT_RT_V4 = :"soniox/stt-rt-v4"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
