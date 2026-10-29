# typed: strong

module Telnyx
  module Models
    module AI
      class TranscriptionFallbackModel < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::TranscriptionFallbackModel,
              Telnyx::Internal::AnyHash
            )
          end

        # The fallback model. It must be a streaming model other than
        # `transcription.model` and the other fallbacks: `deepgram/flux`,
        # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-6-pro` (or its
        # legacy aliases `assemblyai/universal-3-5-pro` and
        # `assemblyai/universal-streaming`), `xai/grok-stt`, `soniox/stt-rt-v4`,
        # `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
        sig { returns(Telnyx::AI::TranscriptionFallbackModel::Model::OrSymbol) }
        attr_accessor :model

        # The language the fallback transcribes. Omit it or set it to `null` to use the
        # language of `transcription.model`. The request is rejected when the fallback
        # model doesn't support the language it would run.
        sig { returns(T.nilable(String)) }
        attr_accessor :language

        # Settings for the fallback, with the same fields and limits as
        # `transcription.settings`. Fields that don't apply to this model's provider are
        # dropped, and the provider's defaults fill in the rest. Omit it or set it to
        # `null` to use the settings of `transcription.model` where they apply to this
        # model.
        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettingsConfig)) }
        attr_reader :settings

        sig do
          params(
            settings: T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
          ).void
        end
        attr_writer :settings

        # A streaming speech-to-text model that takes over transcription when the model in
        # use fails.
        sig do
          params(
            model: Telnyx::AI::TranscriptionFallbackModel::Model::OrSymbol,
            language: T.nilable(String),
            settings: T.nilable(Telnyx::AI::TranscriptionSettingsConfig::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(
          # The fallback model. It must be a streaming model other than
          # `transcription.model` and the other fallbacks: `deepgram/flux`,
          # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-6-pro` (or its
          # legacy aliases `assemblyai/universal-3-5-pro` and
          # `assemblyai/universal-streaming`), `xai/grok-stt`, `soniox/stt-rt-v4`,
          # `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
          model:,
          # The language the fallback transcribes. Omit it or set it to `null` to use the
          # language of `transcription.model`. The request is rejected when the fallback
          # model doesn't support the language it would run.
          language: nil,
          # Settings for the fallback, with the same fields and limits as
          # `transcription.settings`. Fields that don't apply to this model's provider are
          # dropped, and the provider's defaults fill in the rest. Omit it or set it to
          # `null` to use the settings of `transcription.model` where they apply to this
          # model.
          settings: nil
        )
        end

        sig do
          override.returns(
            {
              model: Telnyx::AI::TranscriptionFallbackModel::Model::OrSymbol,
              language: T.nilable(String),
              settings: T.nilable(Telnyx::AI::TranscriptionSettingsConfig)
            }
          )
        end
        def to_hash
        end

        # The fallback model. It must be a streaming model other than
        # `transcription.model` and the other fallbacks: `deepgram/flux`,
        # `deepgram/nova-3`, `deepgram/nova-2`, `assemblyai/universal-3-6-pro` (or its
        # legacy aliases `assemblyai/universal-3-5-pro` and
        # `assemblyai/universal-streaming`), `xai/grok-stt`, `soniox/stt-rt-v4`,
        # `soniox/stt-rt-v5`, `humain/realtime`, or `reson8/turns`.
        module Model
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::TranscriptionFallbackModel::Model)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEEPGRAM_FLUX =
            T.let(
              :"deepgram/flux",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_3 =
            T.let(
              :"deepgram/nova-3",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          DEEPGRAM_NOVA_2 =
            T.let(
              :"deepgram/nova-2",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_3_6_PRO =
            T.let(
              :"assemblyai/universal-3-6-pro",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_3_5_PRO =
            T.let(
              :"assemblyai/universal-3-5-pro",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          ASSEMBLYAI_UNIVERSAL_STREAMING =
            T.let(
              :"assemblyai/universal-streaming",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          XAI_GROK_STT =
            T.let(
              :"xai/grok-stt",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          SONIOX_STT_RT_V4 =
            T.let(
              :"soniox/stt-rt-v4",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          SONIOX_STT_RT_V5 =
            T.let(
              :"soniox/stt-rt-v5",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          HUMAIN_REALTIME =
            T.let(
              :"humain/realtime",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )
          RESON8_TURNS =
            T.let(
              :"reson8/turns",
              Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::TranscriptionFallbackModel::Model::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
