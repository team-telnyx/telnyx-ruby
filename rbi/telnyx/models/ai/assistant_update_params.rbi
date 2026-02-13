# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Map of dynamic variables and their default values
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
          returns(T.nilable(T::Array[Telnyx::AI::EnabledFeatures::OrSymbol]))
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
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        # Use an empty string to have the assistant wait for the user to speak first. Use
        # the special value `<assistant-speaks-first-with-model-generated-message>` to
        # have the assistant generate the greeting based on the system instructions.
        sig { returns(T.nilable(String)) }
        attr_reader :greeting

        sig { params(greeting: String).void }
        attr_writer :greeting

        sig { returns(T.nilable(Telnyx::AI::InsightSettings)) }
        attr_reader :insight_settings

        sig do
          params(insight_settings: Telnyx::AI::InsightSettings::OrHash).void
        end
        attr_writer :insight_settings

        # System instructions for the assistant. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # This is only needed when using third-party inference providers. The `identifier`
        # for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
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

        # ID of the model to use. You can use the
        # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        # to see all of your available models,
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(Telnyx::AI::PrivacySettings)) }
        attr_reader :privacy_settings

        sig do
          params(privacy_settings: Telnyx::AI::PrivacySettings::OrHash).void
        end
        attr_writer :privacy_settings

        # Indicates whether the assistant should be promoted to the main version. Defaults
        # to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :promote_to_main

        sig { params(promote_to_main: T::Boolean).void }
        attr_writer :promote_to_main

        sig { returns(T.nilable(Telnyx::AI::TelephonySettings)) }
        attr_reader :telephony_settings

        sig do
          params(telephony_settings: Telnyx::AI::TelephonySettings::OrHash).void
        end
        attr_writer :telephony_settings

        # The tools that the assistant can use. These may be templated with
        # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams,
                  Telnyx::AI::RetrievalTool,
                  Telnyx::AI::AssistantTool::Handoff,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::AssistantTool::Transfer,
                  Telnyx::AI::AssistantTool::Refer,
                  Telnyx::AI::AssistantTool::SendDtmf,
                  Telnyx::AI::AssistantTool::SendMessage,
                  Telnyx::AI::AssistantTool::SkipTurn
                )
              ]
            )
          )
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash
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

        # Configuration settings for the assistant's web widget.
        sig { returns(T.nilable(Telnyx::AI::WidgetSettings)) }
        attr_reader :widget_settings

        sig { params(widget_settings: Telnyx::AI::WidgetSettings::OrHash).void }
        attr_writer :widget_settings

        sig do
          params(
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            instructions: String,
            llm_api_key_ref: String,
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            model: String,
            name: String,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            promote_to_main: T::Boolean,
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash
                )
              ],
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            widget_settings: Telnyx::AI::WidgetSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          description: nil,
          # Map of dynamic variables and their default values
          dynamic_variables: nil,
          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
          dynamic_variables_webhook_url: nil,
          enabled_features: nil,
          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
          # Use an empty string to have the assistant wait for the user to speak first. Use
          # the special value `<assistant-speaks-first-with-model-generated-message>` to
          # have the assistant generate the greeting based on the system instructions.
          greeting: nil,
          insight_settings: nil,
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions: nil,
          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          llm_api_key_ref: nil,
          messaging_settings: nil,
          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
          # to see all of your available models,
          model: nil,
          name: nil,
          privacy_settings: nil,
          # Indicates whether the assistant should be promoted to the main version. Defaults
          # to true.
          promote_to_main: nil,
          telephony_settings: nil,
          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          tools: nil,
          transcription: nil,
          voice_settings: nil,
          # Configuration settings for the assistant's web widget.
          widget_settings: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              description: String,
              dynamic_variables: T::Hash[Symbol, T.anything],
              dynamic_variables_webhook_url: String,
              enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
              greeting: String,
              insight_settings: Telnyx::AI::InsightSettings,
              instructions: String,
              llm_api_key_ref: String,
              messaging_settings: Telnyx::AI::MessagingSettings,
              model: String,
              name: String,
              privacy_settings: Telnyx::AI::PrivacySettings,
              promote_to_main: T::Boolean,
              telephony_settings: Telnyx::AI::TelephonySettings,
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::InferenceEmbeddingWebhookToolParams,
                    Telnyx::AI::RetrievalTool,
                    Telnyx::AI::AssistantTool::Handoff,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::AssistantTool::Transfer,
                    Telnyx::AI::AssistantTool::Refer,
                    Telnyx::AI::AssistantTool::SendDtmf,
                    Telnyx::AI::AssistantTool::SendMessage,
                    Telnyx::AI::AssistantTool::SkipTurn
                  )
                ],
              transcription: Telnyx::AI::TranscriptionSettings,
              voice_settings: Telnyx::AI::VoiceSettings,
              widget_settings: Telnyx::AI::WidgetSettings,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
