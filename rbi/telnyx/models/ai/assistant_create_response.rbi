# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AssistantCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        # System instructions for the assistant. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(String) }
        attr_accessor :instructions

        # ID of the model to use. You can use the
        # [Get models API](https://developers.telnyx.com/api/inference/inference-embedding/get-models-public-models-get)
        # to see all of your available models,
        sig { returns(String) }
        attr_accessor :model

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Map of dynamic variables and their values
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :dynamic_variables

        sig { params(dynamic_variables: T::Hash[Symbol, T.anything]).void }
        attr_writer :dynamic_variables

        # If the dynamic_variables_webhook_url is set for the assistant, we will send a
        # request at the start of the conversation. See our
        # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        # for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :dynamic_variables_webhook_url

        sig { params(dynamic_variables_webhook_url: String).void }
        attr_writer :dynamic_variables_webhook_url

        sig do
          returns(
            T.nilable(T::Array[Telnyx::AI::EnabledFeatures::TaggedSymbol])
          )
        end
        attr_reader :enabled_features

        sig do
          params(
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]
          ).void
        end
        attr_writer :enabled_features

        # Text that the assistant will use to start the conversation. This may be
        # templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(T.nilable(String)) }
        attr_reader :greeting

        sig { params(greeting: String).void }
        attr_writer :greeting

        sig { returns(T.nilable(Telnyx::AI::ImportMetadata)) }
        attr_reader :import_metadata

        sig { params(import_metadata: Telnyx::AI::ImportMetadata::OrHash).void }
        attr_writer :import_metadata

        sig { returns(T.nilable(Telnyx::AI::InsightSettings)) }
        attr_reader :insight_settings

        sig do
          params(insight_settings: Telnyx::AI::InsightSettings::OrHash).void
        end
        attr_writer :insight_settings

        # This is only needed when using third-party inference providers. The `identifier`
        # for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
        # work with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        sig { returns(T.nilable(Telnyx::AI::MessagingSettings)) }
        attr_reader :messaging_settings

        sig do
          params(messaging_settings: Telnyx::AI::MessagingSettings::OrHash).void
        end
        attr_writer :messaging_settings

        sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
        attr_reader :privacy_settings

        sig do
          params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
        end
        attr_writer :privacy_settings

        sig { returns(T.nilable(Telnyx::AI::TelephonySettings)) }
        attr_reader :telephony_settings

        sig do
          params(telephony_settings: Telnyx::AI::TelephonySettings::OrHash).void
        end
        attr_writer :telephony_settings

        # The tools that the assistant can use. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig do
          returns(T.nilable(T::Array[Telnyx::AI::AssistantTool::Variants]))
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::HandoffTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::AssistantTool::SipReferTool::OrHash,
                  Telnyx::AI::AssistantTool::DtmfTool::OrHash
                )
              ]
          ).void
        end
        attr_writer :tools

        sig { returns(T.nilable(Telnyx::AI::TranscriptionSettings)) }
        attr_reader :transcription

        sig do
          params(transcription: Telnyx::AI::TranscriptionSettings::OrHash).void
        end
        attr_writer :transcription

        sig { returns(T.nilable(Telnyx::AI::VoiceSettings)) }
        attr_reader :voice_settings

        sig { params(voice_settings: Telnyx::AI::VoiceSettings::OrHash).void }
        attr_writer :voice_settings

        sig do
          params(
            id: String,
            created_at: Time,
            instructions: String,
            model: String,
            name: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            greeting: String,
            import_metadata: Telnyx::AI::ImportMetadata::OrHash,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            llm_api_key_ref: String,
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::HandoffTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::AssistantTool::SipReferTool::OrHash,
                  Telnyx::AI::AssistantTool::DtmfTool::OrHash
                )
              ],
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions:,
          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api/inference/inference-embedding/get-models-public-models-get)
          # to see all of your available models,
          model:,
          name:,
          description: nil,
          # Map of dynamic variables and their values
          dynamic_variables: nil,
          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
          dynamic_variables_webhook_url: nil,
          enabled_features: nil,
          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          greeting: nil,
          import_metadata: nil,
          insight_settings: nil,
          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          llm_api_key_ref: nil,
          messaging_settings: nil,
          privacy_settings: nil,
          telephony_settings: nil,
          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          tools: nil,
          transcription: nil,
          voice_settings: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              instructions: String,
              model: String,
              name: String,
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_url: String,
              enabled_features:
                T::Array[Telnyx::AI::EnabledFeatures::TaggedSymbol],
              greeting: String,
              import_metadata: Telnyx::AI::ImportMetadata,
              insight_settings: Telnyx::AI::InsightSettings,
              llm_api_key_ref: String,
              messaging_settings: Telnyx::AI::MessagingSettings,
              privacy_settings: Telnyx::AI::PrivacySettings,
              telephony_settings: Telnyx::AI::TelephonySettings,
              tools: T::Array[Telnyx::AI::AssistantTool::Variants],
              transcription: Telnyx::AI::TranscriptionSettings,
              voice_settings: Telnyx::AI::VoiceSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
