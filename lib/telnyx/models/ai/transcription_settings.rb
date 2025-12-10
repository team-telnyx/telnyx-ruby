# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   The language of the audio to be transcribed. If not set, of if set to `auto`,
        #   the model will automatically detect the language.
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute model
        #   The speech to text model to be used by the voice assistant. All the deepgram
        #   models are run on-premise.
        #
        #   - `deepgram/flux` is optimized for turn-taking but is English-only.
        #   - `deepgram/nova-3` is multi-lingual with automatic language detection but
        #     slightly higher latency.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model, nil]
        optional :model, enum: -> { Telnyx::AI::TranscriptionSettings::Model }

        # @!attribute region
        #   Region on third party cloud providers (currently Azure) if using one of their
        #   models
        #
        #   @return [String, nil]
        optional :region, String

        # @!attribute settings
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings::Settings, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettings::Settings }

        # @!method initialize(language: nil, model: nil, region: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionSettings} for more details.
        #
        #   @param language [String] The language of the audio to be transcribed. If not set, of if set to `auto`, th
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionSettings::Model] The speech to text model to be used by the voice assistant. All the deepgram mod
        #
        #   @param region [String] Region on third party cloud providers (currently Azure) if using one of their mo
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettings::Settings]

        # The speech to text model to be used by the voice assistant. All the deepgram
        # models are run on-premise.
        #
        # - `deepgram/flux` is optimized for turn-taking but is English-only.
        # - `deepgram/nova-3` is multi-lingual with automatic language detection but
        #   slightly higher latency.
        #
        # @see Telnyx::Models::AI::TranscriptionSettings#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          AZURE_FAST = :"azure/fast"
          DISTIL_WHISPER_DISTIL_LARGE_V2 = :"distil-whisper/distil-large-v2"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::AI::TranscriptionSettings#settings
        class Settings < Telnyx::Internal::Type::BaseModel
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
          #   {Telnyx::Models::AI::TranscriptionSettings::Settings} for more details.
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
end
