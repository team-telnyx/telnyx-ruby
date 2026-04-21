# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#update
      class AssistantUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute assistant_id
        #
        #   @return [String]
        required :assistant_id, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute dynamic_variables
        #   Map of dynamic variables and their default values
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute dynamic_variables_webhook_url
        #   If the dynamic_variables_webhook_url is set for the assistant, we will send a
        #   request at the start of the conversation. See our
        #   [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #   for more information.
        #
        #   @return [String, nil]
        optional :dynamic_variables_webhook_url, String

        # @!attribute enabled_features
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>, nil]
        optional :enabled_features, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures] }

        # @!attribute greeting
        #   Text that the assistant will use to start the conversation. This may be
        #   templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        #   Use an empty string to have the assistant wait for the user to speak first. Use
        #   the special value `<assistant-speaks-first-with-model-generated-message>` to
        #   have the assistant generate the greeting based on the system instructions.
        #
        #   @return [String, nil]
        optional :greeting, String

        # @!attribute insight_settings
        #
        #   @return [Telnyx::Models::AI::InsightSettings, nil]
        optional :insight_settings, -> { Telnyx::AI::InsightSettings }

        # @!attribute instructions
        #   System instructions for the assistant. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [String, nil]
        optional :instructions, String

        # @!attribute llm_api_key_ref
        #   This is only needed when using third-party inference providers. The `identifier`
        #   for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   that refers to your LLM provider's API key. Warning: Free plans are unlikely to
        #   work with this integration.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute messaging_settings
        #
        #   @return [Telnyx::Models::AI::MessagingSettings, nil]
        optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

        # @!attribute model
        #   ID of the model to use. You can use the
        #   [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
        #   to see all of your available models,
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute observability_settings
        #
        #   @return [Telnyx::Models::AI::ObservabilityReq, nil]
        optional :observability_settings, -> { Telnyx::AI::ObservabilityReq }

        # @!attribute post_conversation_settings
        #   Configuration for post-conversation processing. When enabled, the assistant
        #   receives one additional LLM turn after the conversation ends, allowing it to
        #   execute tool calls such as logging to a CRM or sending a summary. The assistant
        #   can execute multiple parallel or sequential tools during this phase.
        #   Telephony-control tools (e.g. hangup, transfer) are unavailable
        #   post-conversation. Beta feature.
        #
        #   @return [Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings, nil]
        optional :post_conversation_settings, -> { Telnyx::AI::AssistantUpdateParams::PostConversationSettings }

        # @!attribute privacy_settings
        #
        #   @return [Telnyx::Models::AI::PrivacySettings, nil]
        optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

        # @!attribute promote_to_main
        #   Indicates whether the assistant should be promoted to the main version. Defaults
        #   to true.
        #
        #   @return [Boolean, nil]
        optional :promote_to_main, Telnyx::Internal::Type::Boolean

        # @!attribute telephony_settings
        #
        #   @return [Telnyx::Models::AI::TelephonySettings, nil]
        optional :telephony_settings, -> { Telnyx::AI::TelephonySettings }

        # @!attribute tool_ids
        #
        #   @return [Array<String>, nil]
        optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute tools
        #   The tools that the assistant can use. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>, nil]
        optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool] }

        # @!attribute transcription
        #
        #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
        optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

        # @!attribute voice_settings
        #
        #   @return [Telnyx::Models::AI::VoiceSettings, nil]
        optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

        # @!attribute widget_settings
        #   Configuration settings for the assistant's web widget.
        #
        #   @return [Telnyx::Models::AI::WidgetSettings, nil]
        optional :widget_settings, -> { Telnyx::AI::WidgetSettings }

        # @!method initialize(assistant_id:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, insight_settings: nil, instructions: nil, llm_api_key_ref: nil, messaging_settings: nil, model: nil, name: nil, observability_settings: nil, post_conversation_settings: nil, privacy_settings: nil, promote_to_main: nil, telephony_settings: nil, tool_ids: nil, tools: nil, transcription: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantUpdateParams} for more details.
        #
        #   @param assistant_id [String]
        #
        #   @param description [String]
        #
        #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        #   @param dynamic_variables_webhook_url [String] If the dynamic_variables_webhook_url is set for the assistant, we will send a re
        #
        #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers. The `identifier`
        #
        #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        #   @param model [String] ID of the model to use. You can use the [Get models API](https://developers.teln
        #
        #   @param name [String]
        #
        #   @param observability_settings [Telnyx::Models::AI::ObservabilityReq]
        #
        #   @param post_conversation_settings [Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings] Configuration for post-conversation processing. When enabled, the assistant rece
        #
        #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        #   @param promote_to_main [Boolean] Indicates whether the assistant should be promoted to the main version. Defaults
        #
        #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        #   @param tool_ids [Array<String>]
        #
        #   @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>] The tools that the assistant can use. These may be templated with [dynamic varia
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        #   @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class PostConversationSettings < Telnyx::Internal::Type::BaseModel
          # @!attribute enabled
          #   Whether post-conversation processing is enabled. When true, the assistant will
          #   be invoked after the conversation ends to perform any final tool calls. Defaults
          #   to false.
          #
          #   @return [Boolean, nil]
          optional :enabled, Telnyx::Internal::Type::Boolean

          # @!method initialize(enabled: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantUpdateParams::PostConversationSettings} for more
          #   details.
          #
          #   Configuration for post-conversation processing. When enabled, the assistant
          #   receives one additional LLM turn after the conversation ends, allowing it to
          #   execute tool calls such as logging to a CRM or sending a summary. The assistant
          #   can execute multiple parallel or sequential tools during this phase.
          #   Telephony-control tools (e.g. hangup, transfer) are unavailable
          #   post-conversation. Beta feature.
          #
          #   @param enabled [Boolean] Whether post-conversation processing is enabled. When true, the assistant will b
        end
      end
    end
  end
end
