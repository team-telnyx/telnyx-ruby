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
        #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }

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
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig]

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
      end
    end
  end
end
