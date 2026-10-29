# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class TranscriptionFallbackModel < Telnyx::Internal::Type::BaseModel
        # @!attribute model
        #   The fallback model. It must be a streaming model other than
        #   `transcription.model` and the other fallbacks: `deepgram/flux`,
        #   `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-6-pro` (or its
        #   legacy aliases `assemblyai/universal-3-5-pro` and
        #   `assemblyai/universal-streaming`), `xai/grok-stt`, `soniox/stt-rt-v4`,
        #   `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
        #
        #   @return [Symbol, Telnyx::Models::AI::TranscriptionFallbackModel::Model]
        required :model, enum: -> { Telnyx::AI::TranscriptionFallbackModel::Model }

        # @!attribute language
        #   The language the fallback transcribes. Omit it or set it to `null` to use the
        #   language of `transcription.model`. The request is rejected when the fallback
        #   model doesn't support the language it would run.
        #
        #   @return [String, nil]
        optional :language, String, nil?: true

        # @!attribute settings
        #   Settings for the fallback, with the same fields and limits as
        #   `transcription.settings`. Fields that don't apply to this model's provider are
        #   dropped, and the provider's defaults fill in the rest. Omit it or set it to
        #   `null` to use the settings of `transcription.model` where they apply to this
        #   model.
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettingsConfig, nil]
        optional :settings, -> { Telnyx::AI::TranscriptionSettingsConfig }, nil?: true

        # @!method initialize(model:, language: nil, settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::TranscriptionFallbackModel} for more details.
        #
        #   A streaming speech-to-text model that takes over transcription when the model in
        #   use fails.
        #
        #   @param model [Symbol, Telnyx::Models::AI::TranscriptionFallbackModel::Model] The fallback model. It must be a streaming model other than `transcription.model
        #
        #   @param language [String, nil] The language the fallback transcribes. Omit it or set it to `null` to use the la
        #
        #   @param settings [Telnyx::Models::AI::TranscriptionSettingsConfig, nil] Settings for the fallback, with the same fields and limits as `transcription.set

        # The fallback model. It must be a streaming model other than
        # `transcription.model` and the other fallbacks: `deepgram/flux`,
        # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-6-pro` (or its
        # legacy aliases `assemblyai/universal-3-5-pro` and
        # `assemblyai/universal-streaming`), `xai/grok-stt`, `soniox/stt-rt-v4`,
        # `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
        #
        # @see Telnyx::Models::AI::TranscriptionFallbackModel#model
        module Model
          extend Telnyx::Internal::Type::Enum

          DEEPGRAM_FLUX = :"deepgram/flux"
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"
          DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
          ASSEMBLYAI_UNIVERSAL_3_6_PRO = :"assemblyai/universal-3-6-pro"
          ASSEMBLYAI_UNIVERSAL_3_5_PRO = :"assemblyai/universal-3-5-pro"
          ASSEMBLYAI_UNIVERSAL_STREAMING = :"assemblyai/universal-streaming"
          XAI_GROK_STT = :"xai/grok-stt"
          SONIOX_STT_RT_V4 = :"soniox/stt-rt-v4"
          SONIOX_STT_RT_V5 = :"soniox/stt-rt-v5"
          HUMAIN_REALTIME = :"humain/realtime"
          RESON8_TURNS = :"reson8/turns"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
