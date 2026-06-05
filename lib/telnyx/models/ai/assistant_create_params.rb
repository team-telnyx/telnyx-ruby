# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#create
      class AssistantCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instructions
        #   System instructions for the assistant. These may be templated with
        #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #
        #   @return [String]
        required :instructions, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute conversation_flow
        #   Conversation flow as supplied by API clients (create / update).
        #
        #   A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        #   unique node/edge IDs, that `start_node_id` references a real node, and that
        #   every edge's endpoints reference real nodes.
        #
        #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow, nil]
        optional :conversation_flow, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute dynamic_variables
        #   Map of dynamic variables and their default values
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute dynamic_variables_webhook_timeout_ms
        #   Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        #   10000 ms. If the webhook does not respond within this timeout, the call proceeds
        #   with default values. See the
        #   [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
        #
        #   @return [Integer, nil]
        optional :dynamic_variables_webhook_timeout_ms, Integer

        # @!attribute dynamic_variables_webhook_url
        #   If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this
        #   URL at the start of the conversation to resolve dynamic variables. **Gotcha:**
        #   the webhook response must wrap variables under a top-level `dynamic_variables`
        #   object, e.g. `{"dynamic_variables": {"customer_name": "Jane"}}`. Returning a
        #   flat object will be ignored and variables will fall back to their defaults. See
        #   the
        #   [dynamic variables guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
        #   for the full request/response format and timeout behavior.
        #
        #   @return [String, nil]
        optional :dynamic_variables_webhook_url, String

        # @!attribute enabled_features
        #
        #   @return [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>, nil]
        optional :enabled_features, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures] }

        # @!attribute external_llm
        #
        #   @return [Telnyx::Models::AI::ExternalLlmReq, nil]
        optional :external_llm, -> { Telnyx::AI::ExternalLlmReq }

        # @!attribute fallback_config
        #
        #   @return [Telnyx::Models::AI::FallbackConfigReq, nil]
        optional :fallback_config, -> { Telnyx::AI::FallbackConfigReq }

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

        # @!attribute integrations
        #   Connected integrations attached to the assistant. The catalog of available
        #   integrations is at `/ai/integrations`; the user's connected integrations are at
        #   `/ai/integrations/connections`. Each item references a catalog integration by
        #   `integration_id`.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantIntegration>, nil]
        optional :integrations, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantIntegration] }

        # @!attribute interruption_settings
        #   Settings for interruptions and how the assistant decides the user has finished
        #   speaking. These timings are most relevant when using non turn-taking
        #   transcription models. For turn-taking models like `deepgram/flux`, end-of-turn
        #   behavior is controlled by the transcription end-of-turn settings under
        #   `transcription.settings` (`eot_threshold`, `eot_timeout_ms`,
        #   `eager_eot_threshold`).
        #
        #   @return [Telnyx::Models::AI::InferenceEmbeddingInterruptionSettings, nil]
        optional :interruption_settings, -> { Telnyx::AI::InferenceEmbeddingInterruptionSettings }

        # @!attribute llm_api_key_ref
        #   This is only needed when using third-party inference providers selected by
        #   `model`. The `identifier` for an integration secret
        #   [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   that refers to your LLM provider's API key. For bring-your-own endpoint
        #   authentication, use `external_llm.llm_api_key_ref` instead. Warning: Free plans
        #   are unlikely to work with this integration.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute mcp_servers
        #   MCP servers attached to the assistant. Create MCP servers with
        #   `/ai/mcp_servers`, then reference them by `id` here.
        #
        #   @return [Array<Telnyx::Models::AI::AssistantMcpServer>, nil]
        optional :mcp_servers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantMcpServer] }

        # @!attribute messaging_settings
        #
        #   @return [Telnyx::Models::AI::MessagingSettings, nil]
        optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

        # @!attribute model
        #   ID of the model to use when `external_llm` is not set. You can use the
        #   [Get models API](https://developers.telnyx.com/api-reference/openai-chat/get-available-models-openai-compatible)
        #   to see available models. If `external_llm` is provided, the assistant uses
        #   `external_llm` instead of this field. If neither `model` nor `external_llm` is
        #   provided, Telnyx applies the default model.
        #
        #   @return [String, nil]
        optional :model, String

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
        #   @return [Telnyx::Models::AI::PostConversationSettingsReq, nil]
        optional :post_conversation_settings, -> { Telnyx::AI::PostConversationSettingsReq }

        # @!attribute privacy_settings
        #
        #   @return [Telnyx::Models::AI::PrivacySettings, nil]
        optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

        # @!attribute tags
        #   Tags associated with the assistant. Tags can also be managed with the assistant
        #   tag endpoints.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute telephony_settings
        #
        #   @return [Telnyx::Models::AI::TelephonySettings, nil]
        optional :telephony_settings, -> { Telnyx::AI::TelephonySettings }

        # @!attribute tool_ids
        #   IDs of shared tools to attach to the assistant. New integrations should prefer
        #   `tool_ids` over inline `tools`.
        #
        #   @return [Array<String>, nil]
        optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute tools
        #   Deprecated for new integrations. Inline tool definitions available to the
        #   assistant. Prefer `tool_ids` to attach shared tools created with the AI Tools
        #   endpoints.
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

        # @!method initialize(instructions:, name:, conversation_flow: nil, description: nil, dynamic_variables: nil, dynamic_variables_webhook_timeout_ms: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, external_llm: nil, fallback_config: nil, greeting: nil, insight_settings: nil, integrations: nil, interruption_settings: nil, llm_api_key_ref: nil, mcp_servers: nil, messaging_settings: nil, model: nil, observability_settings: nil, post_conversation_settings: nil, privacy_settings: nil, tags: nil, telephony_settings: nil, tool_ids: nil, tools: nil, transcription: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantCreateParams} for more details.
        #
        #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        #   @param name [String]
        #
        #   @param conversation_flow [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow] Conversation flow as supplied by API clients (create / update).
        #
        #   @param description [String]
        #
        #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        #   @param dynamic_variables_webhook_timeout_ms [Integer] Timeout in milliseconds for the dynamic variables webhook. Must be between 1 and
        #
        #   @param dynamic_variables_webhook_url [String] If `dynamic_variables_webhook_url` is set, Telnyx sends a POST request to this U
        #
        #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        #   @param external_llm [Telnyx::Models::AI::ExternalLlmReq]
        #
        #   @param fallback_config [Telnyx::Models::AI::FallbackConfigReq]
        #
        #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        #   @param integrations [Array<Telnyx::Models::AI::AssistantIntegration>] Connected integrations attached to the assistant. The catalog of available integ
        #
        #   @param interruption_settings [Telnyx::Models::AI::InferenceEmbeddingInterruptionSettings] Settings for interruptions and how the assistant decides the user has finished s
        #
        #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers selected by `mode
        #
        #   @param mcp_servers [Array<Telnyx::Models::AI::AssistantMcpServer>] MCP servers attached to the assistant. Create MCP servers with `/ai/mcp_servers`
        #
        #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        #   @param model [String] ID of the model to use when `external_llm` is not set. You can use the [Get mode
        #
        #   @param observability_settings [Telnyx::Models::AI::ObservabilityReq]
        #
        #   @param post_conversation_settings [Telnyx::Models::AI::PostConversationSettingsReq] Configuration for post-conversation processing. When enabled, the assistant rece
        #
        #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        #   @param tags [Array<String>] Tags associated with the assistant. Tags can also be managed with the assistant
        #
        #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        #   @param tool_ids [Array<String>] IDs of shared tools to attach to the assistant. New integrations should prefer `
        #
        #   @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>] Deprecated for new integrations. Inline tool definitions available to the assist
        #
        #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        #   @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class ConversationFlow < Telnyx::Internal::Type::BaseModel
          # @!attribute nodes
          #   All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
          #   (`type: prompt`) or a tool node (`type: tool`).
          #
          #   @return [Array<Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak>]
          required :nodes,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantCreateParams::ConversationFlow::Node] }

          # @!attribute start_node_id
          #   ID of the node where the conversation begins.
          #
          #   @return [String]
          required :start_node_id, String

          # @!attribute edges
          #   Directed transitions between nodes. May be empty for a single-node flow.
          #
          #   @return [Array<Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge>, nil]
          optional :edges,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge] }

          # @!method initialize(nodes:, start_node_id:, edges: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow} for more details.
          #
          #   Conversation flow as supplied by API clients (create / update).
          #
          #   A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
          #   unique node/edge IDs, that `start_node_id` references a real node, and that
          #   every edge's endpoints reference real nodes.
          #
          #   @param nodes [Array<Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak>] All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
          #
          #   @param start_node_id [String] ID of the node where the conversation begins.
          #
          #   @param edges [Array<Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge>] Directed transitions between nodes. May be empty for a single-node flow.

          # One step in a conversation flow, as supplied by API clients.
          #
          # Each node carries the prompt, tool scope, and optional overrides for
          # model/voice/transcription. Unset overrides cascade from the assistant.
          module Node
            extend Telnyx::Internal::Type::Union

            discriminator :type

            # One step in a conversation flow, as supplied by API clients.
            #
            # Each node carries the prompt, tool scope, and optional overrides for
            # model/voice/transcription. Unset overrides cascade from the assistant.
            variant :prompt, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt }

            # A standalone tool step in a conversation flow, as supplied by clients.
            #
            # Unlike a prompt node, a tool node has no instructions or model — it
            # isn't an LLM turn. Reaching it deterministically runs one shared tool
            # (arguments filled from matching dynamic variables by name), then routes
            # on the result via outgoing `tool_result` edges.
            variant :tool, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool }

            # A standalone scripted-message step in a flow, as supplied by clients.
            #
            # Unlike a prompt node, a speak node has no instructions or model — it isn't
            # an LLM turn. Reaching it delivers `message` to the user verbatim (with
            # `{{variable}}` interpolation), then routes via outgoing `llm` /
            # `expression` edges.
            variant :speak, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak }

            class Prompt < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Caller-supplied unique identifier for this node within the flow.
              #
              #   @return [String]
              required :id, String

              # @!attribute instructions
              #   Prompt that drives the LLM while this node is active. Required.
              #
              #   @return [String]
              required :instructions, String

              # @!attribute external_llm
              #   Override for `Assistant.external_llm` while this node is active. Use this to
              #   route a node's turns to a different external LLM (different `model`, `base_url`,
              #   credentials). Part of the LLM bundle — see `model` for cascade semantics.
              #   Mutually exclusive with `model` on the node (a single LLM identity per node).
              #
              #   @return [Telnyx::Models::AI::ExternalLlmReq, nil]
              optional :external_llm, -> { Telnyx::AI::ExternalLlmReq }

              # @!attribute instructions_mode
              #   How `instructions` combine with the assistant-level instructions. `replace`
              #   (default): the node's instructions are used alone. `append`: the node's
              #   instructions are concatenated after the assistant's instructions.
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode, nil]
              optional :instructions_mode,
                       enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode }

              # @!attribute llm_api_key_ref
              #   Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
              #   LLM bundle — see `model` for cascade semantics.
              #
              #   @return [String, nil]
              optional :llm_api_key_ref, String

              # @!attribute model
              #   Override for `Assistant.model` while this node is active. Part of the LLM bundle
              #   (`model` + `llm_api_key_ref` + `external_llm`): when any of the three is set on
              #   the node, all three are taken from the node and the assistant-level LLM identity
              #   is not consulted. When none of the three is set, the assistant's bundle cascades
              #   unchanged.
              #
              #   @return [String, nil]
              optional :model, String

              # @!attribute name
              #   Optional human-readable label, displayed in authoring UIs.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute position
              #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #   by the runtime; round-trips so frontends can persist graph layout across
              #   reloads.
              #
              #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position, nil]
              optional :position, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position }

              # @!attribute shared_tool_ids
              #   IDs of shared (org-level) tools available at this node. Knowledge bases are
              #   attached the same way — via a shared retrieval tool. Tools not listed here are
              #   not callable while this node is active.
              #
              #   @return [Array<String>, nil]
              optional :shared_tool_ids, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute tools_mode
              #   How `shared_tool_ids` combine with the assistant-level tool set. `replace`
              #   (default): only the node's tools are callable. `append`: the node's tools are
              #   added to the assistant's tools. Ignored when `shared_tool_ids` is null.
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode, nil]
              optional :tools_mode,
                       enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode }

              # @!attribute transcription
              #   Per-node transcription override (model/language/region). Unset fields cascade
              #   from the assistant-level transcription.
              #
              #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
              optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

              # @!attribute type
              #   Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
              #   standalone tool execution (see `ToolNodeReq`).
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type, nil]
              optional :type, enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type }

              # @!attribute voice_settings
              #   Per-node voice override. Only fields set here override the assistant-level voice
              #   settings; unset fields cascade.
              #
              #   @return [Telnyx::Models::AI::VoiceSettings, nil]
              optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

              # @!method initialize(id:, instructions:, external_llm: nil, instructions_mode: nil, llm_api_key_ref: nil, model: nil, name: nil, position: nil, shared_tool_ids: nil, tools_mode: nil, transcription: nil, type: nil, voice_settings: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt} for
              #   more details.
              #
              #   One step in a conversation flow, as supplied by API clients.
              #
              #   Each node carries the prompt, tool scope, and optional overrides for
              #   model/voice/transcription. Unset overrides cascade from the assistant.
              #
              #   @param id [String] Caller-supplied unique identifier for this node within the flow.
              #
              #   @param instructions [String] Prompt that drives the LLM while this node is active. Required.
              #
              #   @param external_llm [Telnyx::Models::AI::ExternalLlmReq] Override for `Assistant.external_llm` while this node is active. Use this to rou
              #
              #   @param instructions_mode [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::InstructionsMode] How `instructions` combine with the assistant-level instructions. `replace` (def
              #
              #   @param llm_api_key_ref [String] Override for `Assistant.llm_api_key_ref` while this node is active. Part of the
              #
              #   @param model [String] Override for `Assistant.model` while this node is active. Part of the LLM bundle
              #
              #   @param name [String] Optional human-readable label, displayed in authoring UIs.
              #
              #   @param position [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Position] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #
              #   @param shared_tool_ids [Array<String>] IDs of shared (org-level) tools available at this node. Knowledge bases are atta
              #
              #   @param tools_mode [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::ToolsMode] How `shared_tool_ids` combine with the assistant-level tool set. `replace` (defa
              #
              #   @param transcription [Telnyx::Models::AI::TranscriptionSettings] Per-node transcription override (model/language/region). Unset fields cascade fr
              #
              #   @param type [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt::Type] Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a s
              #
              #   @param voice_settings [Telnyx::Models::AI::VoiceSettings] Per-node voice override. Only fields set here override the assistant-level voice

              # How `instructions` combine with the assistant-level instructions. `replace`
              # (default): the node's instructions are used alone. `append`: the node's
              # instructions are concatenated after the assistant's instructions.
              #
              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt#instructions_mode
              module InstructionsMode
                extend Telnyx::Internal::Type::Enum

                REPLACE = :replace
                APPEND = :append

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt#position
              class Position < Telnyx::Internal::Type::BaseModel
                # @!attribute x
                #   Horizontal coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :x, Float

                # @!attribute y_
                #   Vertical coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :y_, Float, api_name: :y

                # @!method initialize(x:, y_:)
                #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                #   by the runtime; round-trips so frontends can persist graph layout across
                #   reloads.
                #
                #   @param x [Float] Horizontal coordinate in the authoring canvas.
                #
                #   @param y_ [Float] Vertical coordinate in the authoring canvas.
              end

              # How `shared_tool_ids` combine with the assistant-level tool set. `replace`
              # (default): only the node's tools are callable. `append`: the node's tools are
              # added to the assistant's tools. Ignored when `shared_tool_ids` is null.
              #
              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt#tools_mode
              module ToolsMode
                extend Telnyx::Internal::Type::Enum

                REPLACE = :replace
                APPEND = :append

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Node kind discriminator. `prompt` (default) is an LLM-driven step; `tool` is a
              # standalone tool execution (see `ToolNodeReq`).
              #
              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt#type
              module Type
                extend Telnyx::Internal::Type::Enum

                PROMPT = :prompt

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Tool < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Caller-supplied unique identifier for this node within the flow.
              #
              #   @return [String]
              required :id, String

              # @!attribute shared_tool_id
              #   ID of the single shared (org-level) tool this node executes. When the flow
              #   reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
              #   `tool_result` edges then route on the outcome. Arguments are filled from the
              #   conversation's dynamic variables by name — a dynamic variable whose name matches
              #   one of the tool's parameters supplies that argument. Cross-validated against the
              #   org's shared tools on write.
              #
              #   @return [String]
              required :shared_tool_id, String

              # @!attribute name
              #   Optional human-readable label, displayed in authoring UIs.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute position
              #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #   by the runtime; round-trips so frontends can persist graph layout across
              #   reloads.
              #
              #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position, nil]
              optional :position, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position }

              # @!attribute type
              #   Node kind discriminator. Always `tool` for a tool node.
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type, nil]
              optional :type, enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type }

              # @!method initialize(id:, shared_tool_id:, name: nil, position: nil, type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool} for
              #   more details.
              #
              #   A standalone tool step in a conversation flow, as supplied by clients.
              #
              #   Unlike a prompt node, a tool node has no instructions or model — it isn't an LLM
              #   turn. Reaching it deterministically runs one shared tool (arguments filled from
              #   matching dynamic variables by name), then routes on the result via outgoing
              #   `tool_result` edges.
              #
              #   @param id [String] Caller-supplied unique identifier for this node within the flow.
              #
              #   @param shared_tool_id [String] ID of the single shared (org-level) tool this node executes. When the flow reach
              #
              #   @param name [String] Optional human-readable label, displayed in authoring UIs.
              #
              #   @param position [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Position] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #
              #   @param type [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool::Type] Node kind discriminator. Always `tool` for a tool node.

              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool#position
              class Position < Telnyx::Internal::Type::BaseModel
                # @!attribute x
                #   Horizontal coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :x, Float

                # @!attribute y_
                #   Vertical coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :y_, Float, api_name: :y

                # @!method initialize(x:, y_:)
                #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                #   by the runtime; round-trips so frontends can persist graph layout across
                #   reloads.
                #
                #   @param x [Float] Horizontal coordinate in the authoring canvas.
                #
                #   @param y_ [Float] Vertical coordinate in the authoring canvas.
              end

              # Node kind discriminator. Always `tool` for a tool node.
              #
              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool#type
              module Type
                extend Telnyx::Internal::Type::Enum

                TOOL = :tool

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class Speak < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #   Caller-supplied unique identifier for this node within the flow.
              #
              #   @return [String]
              required :id, String

              # @!attribute message
              #   Message delivered to the user verbatim when the flow reaches this node. No LLM
              #   turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
              #   are interpolated from the conversation's dynamic variables; an unresolved
              #   placeholder renders as an empty string. After delivering, the flow routes via
              #   the node's outgoing `llm` / `expression` edges (commonly a single unconditional
              #   edge).
              #
              #   @return [String]
              required :message, String

              # @!attribute name
              #   Optional human-readable label, displayed in authoring UIs.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute position
              #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #   by the runtime; round-trips so frontends can persist graph layout across
              #   reloads.
              #
              #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position, nil]
              optional :position, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position }

              # @!attribute type
              #   Node kind discriminator. Always `speak` for a speak node.
              #
              #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type, nil]
              optional :type, enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type }

              # @!method initialize(id:, message:, name: nil, position: nil, type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak} for
              #   more details.
              #
              #   A standalone scripted-message step in a flow, as supplied by clients.
              #
              #   Unlike a prompt node, a speak node has no instructions or model — it isn't an
              #   LLM turn. Reaching it delivers `message` to the user verbatim (with
              #   `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
              #   edges.
              #
              #   @param id [String] Caller-supplied unique identifier for this node within the flow.
              #
              #   @param message [String] Message delivered to the user verbatim when the flow reaches this node. No LLM t
              #
              #   @param name [String] Optional human-readable label, displayed in authoring UIs.
              #
              #   @param position [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Position] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
              #
              #   @param type [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak::Type] Node kind discriminator. Always `speak` for a speak node.

              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak#position
              class Position < Telnyx::Internal::Type::BaseModel
                # @!attribute x
                #   Horizontal coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :x, Float

                # @!attribute y_
                #   Vertical coordinate in the authoring canvas.
                #
                #   @return [Float]
                required :y_, Float, api_name: :y

                # @!method initialize(x:, y_:)
                #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
                #   by the runtime; round-trips so frontends can persist graph layout across
                #   reloads.
                #
                #   @param x [Float] Horizontal coordinate in the authoring canvas.
                #
                #   @param y_ [Float] Vertical coordinate in the authoring canvas.
              end

              # Node kind discriminator. Always `speak` for a speak node.
              #
              # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak#type
              module Type
                extend Telnyx::Internal::Type::Enum

                SPEAK = :speak

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Prompt, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Tool, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Node::Speak)]
          end

          class Edge < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Caller-supplied unique identifier for this edge within the flow.
            #
            #   @return [String]
            required :id, String

            # @!attribute condition
            #   Condition that gates the transition. Discriminated by `type`: `llm`,
            #   `expression`.
            #
            #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default]
            required :condition, union: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition }

            # @!attribute start_node_id
            #   ID of the node this edge transitions away from.
            #
            #   @return [String]
            required :start_node_id, String

            # @!attribute target
            #   Destination of the transition. Discriminated by `type`: `node` (jump to another
            #   node in this flow) or `assistant` (hand off to a different assistant).
            #
            #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant]
            required :target, union: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target }

            # @!method initialize(id:, condition:, start_node_id:, target:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge} for more
            #   details.
            #
            #   Directed transition from one node to a target, gated by a condition.
            #
            #   The target is either another node in the same flow (`NodeTarget`) or a different
            #   assistant (`AssistantTarget`). Multiple edges may share a `start_node_id`; the
            #   runtime evaluates them in the order they're declared and takes the first whose
            #   condition is true.
            #
            #   @param id [String] Caller-supplied unique identifier for this edge within the flow.
            #
            #   @param condition [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default] Condition that gates the transition. Discriminated by `type`: `llm`, `expression
            #
            #   @param start_node_id [String] ID of the node this edge transitions away from.
            #
            #   @param target [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant] Destination of the transition. Discriminated by `type`: `node` (jump to another

            # Condition that gates the transition. Discriminated by `type`: `llm`,
            # `expression`.
            #
            # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge#condition
            module Condition
              extend Telnyx::Internal::Type::Union

              discriminator :type

              # Edge condition evaluated by the LLM from a natural-language prompt.
              #
              # The model is asked to judge the prompt against conversation context and
              # returns true/false. Use this for fuzzy intents that aren't expressible as
              # a deterministic expression (e.g. 'user wants to escalate to a human').
              variant :llm, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm }

              # Edge condition evaluated as a deterministic expression AST.
              #
              # The expression is computed against runtime dynamic variables and must
              # evaluate to a boolean. Prefer this over `LLMCondition` when the rule is
              # a clean function of known variables — it's cheaper and predictable.
              variant :expression,
                      -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression }

              # Fallback edge condition: fires only when no other edge's condition is true.
              #
              # Evaluated after every conditioned (`llm` / `expression`) edge regardless
              # of declaration order, so it routes the flow whenever none of the node's
              # other outgoing edges match. Valid **only** on edges leaving a `tool` or
              # `speak` node, where the deterministic step auto-advances and must always
              # have somewhere to go. A tool/speak node with any outgoing edge is required
              # to carry exactly one `default` edge so it never dead-ends; a tool/speak
              # node with no outgoing edges is a valid terminal step. Carries no parameters.
              variant :default, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default }

              class Llm < Telnyx::Internal::Type::BaseModel
                # @!attribute prompt
                #   Natural-language criterion the LLM judges as true/false.
                #
                #   @return [String]
                required :prompt, String

                # @!attribute type
                #
                #   @return [Symbol, :llm]
                required :type, const: :llm

                # @!method initialize(prompt:, type: :llm)
                #   Edge condition evaluated by the LLM from a natural-language prompt.
                #
                #   The model is asked to judge the prompt against conversation context and returns
                #   true/false. Use this for fuzzy intents that aren't expressible as a
                #   deterministic expression (e.g. 'user wants to escalate to a human').
                #
                #   @param prompt [String] Natural-language criterion the LLM judges as true/false.
                #
                #   @param type [Symbol, :llm]
              end

              class Expression < Telnyx::Internal::Type::BaseModel
                # @!attribute expression
                #   A node in a deterministic expression AST. Exactly one variant is selected by the
                #   `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
                #   `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
                #   and `comparison` nest further sub-expressions.
                #
                #   Extracted into a single named schema so the recursive union is defined once (was
                #   previously inlined at every operand site).
                #
                #   @return [Object, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression]
                required :expression,
                         union: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression }

                # @!attribute type
                #
                #   @return [Symbol, :expression]
                required :type, const: :expression

                # @!method initialize(expression:, type: :expression)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression}
                #   for more details.
                #
                #   Edge condition evaluated as a deterministic expression AST.
                #
                #   The expression is computed against runtime dynamic variables and must evaluate
                #   to a boolean. Prefer this over `LLMCondition` when the rule is a clean function
                #   of known variables — it's cheaper and predictable.
                #
                #   @param expression [Object, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression] A node in a deterministic expression AST. Exactly one variant is selected by the
                #
                #   @param type [Symbol, :expression]

                # A node in a deterministic expression AST. Exactly one variant is selected by the
                # `type` discriminator. Terminal variants (`number_literal`, `string_literal`,
                # `bool_literal`, `variable`) bottom out the recursion; `arithmetic`, `bool_op`,
                # and `comparison` nest further sub-expressions.
                #
                # Extracted into a single named schema so the recursive union is defined once (was
                # previously inlined at every operand site).
                #
                # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression#expression
                module Expression
                  extend Telnyx::Internal::Type::Union

                  variant Telnyx::Internal::Type::Unknown

                  # Reference a dynamic variable by name.
                  #
                  # Resolved at runtime from the assistant's dynamic-variables context (see
                  # `Assistant.dynamic_variables` and the dynamic-variables webhook).
                  variant -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression }

                  # Constant string value.
                  variant -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression }

                  # Constant numeric value (float; integers are accepted and stored as float).
                  variant -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression }

                  # Constant boolean value. Useful for unconditional ('always') edges.
                  variant -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression }

                  class DynamicVariableExpression < Telnyx::Internal::Type::BaseModel
                    # @!attribute name
                    #   Variable name to look up in the runtime context.
                    #
                    #   @return [String]
                    required :name, String

                    # @!attribute type
                    #
                    #   @return [Symbol, :variable]
                    required :type, const: :variable

                    # @!method initialize(name:, type: :variable)
                    #   Reference a dynamic variable by name.
                    #
                    #   Resolved at runtime from the assistant's dynamic-variables context (see
                    #   `Assistant.dynamic_variables` and the dynamic-variables webhook).
                    #
                    #   @param name [String] Variable name to look up in the runtime context.
                    #
                    #   @param type [Symbol, :variable]
                  end

                  class StringLiteralExpression < Telnyx::Internal::Type::BaseModel
                    # @!attribute type
                    #
                    #   @return [Symbol, :string_literal]
                    required :type, const: :string_literal

                    # @!attribute value
                    #   Literal string value.
                    #
                    #   @return [String]
                    required :value, String

                    # @!method initialize(value:, type: :string_literal)
                    #   Constant string value.
                    #
                    #   @param value [String] Literal string value.
                    #
                    #   @param type [Symbol, :string_literal]
                  end

                  class NumberLiteralExpression < Telnyx::Internal::Type::BaseModel
                    # @!attribute type
                    #
                    #   @return [Symbol, :number_literal]
                    required :type, const: :number_literal

                    # @!attribute value
                    #   Literal numeric value.
                    #
                    #   @return [Float]
                    required :value, Float

                    # @!method initialize(value:, type: :number_literal)
                    #   Constant numeric value (float; integers are accepted and stored as float).
                    #
                    #   @param value [Float] Literal numeric value.
                    #
                    #   @param type [Symbol, :number_literal]
                  end

                  class BooleanLiteralExpression < Telnyx::Internal::Type::BaseModel
                    # @!attribute type
                    #
                    #   @return [Symbol, :bool_literal]
                    required :type, const: :bool_literal

                    # @!attribute value
                    #   Literal boolean value.
                    #
                    #   @return [Boolean]
                    required :value, Telnyx::Internal::Type::Boolean

                    # @!method initialize(value:, type: :bool_literal)
                    #   Constant boolean value. Useful for unconditional ('always') edges.
                    #
                    #   @param value [Boolean] Literal boolean value.
                    #
                    #   @param type [Symbol, :bool_literal]
                  end

                  # @!method self.variants
                  #   @return [Array(Object, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::DynamicVariableExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::StringLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::NumberLiteralExpression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression::Expression::BooleanLiteralExpression)]
                end
              end

              class Default < Telnyx::Internal::Type::BaseModel
                # @!attribute type
                #
                #   @return [Symbol, :default]
                required :type, const: :default

                # @!method initialize(type: :default)
                #   Fallback edge condition: fires only when no other edge's condition is true.
                #
                #   Evaluated after every conditioned (`llm` / `expression`) edge regardless of
                #   declaration order, so it routes the flow whenever none of the node's other
                #   outgoing edges match. Valid **only** on edges leaving a `tool` or `speak` node,
                #   where the deterministic step auto-advances and must always have somewhere to go.
                #   A tool/speak node with any outgoing edge is required to carry exactly one
                #   `default` edge so it never dead-ends; a tool/speak node with no outgoing edges
                #   is a valid terminal step. Carries no parameters.
                #
                #   @param type [Symbol, :default]
              end

              # @!method self.variants
              #   @return [Array(Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Llm, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Expression, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Condition::Default)]
            end

            # Destination of the transition. Discriminated by `type`: `node` (jump to another
            # node in this flow) or `assistant` (hand off to a different assistant).
            #
            # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge#target
            module Target
              extend Telnyx::Internal::Type::Union

              discriminator :type

              # Edge target referencing another node within the same flow.
              #
              # The runtime transitions the active node to `node_id` and continues
              # processing within the current assistant's flow.
              variant :node, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node }

              # Edge target referencing a different assistant.
              #
              # When the edge fires, the conversation hands off to `assistant_id`: the
              # active assistant on the conversation row is rewritten and the new
              # assistant's flow starts at its own `start_node_id`. The current turn's
              # LLM response is delivered to the user as-is; subsequent turns route
              # to the new assistant.
              variant :assistant, -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant }

              class Node < Telnyx::Internal::Type::BaseModel
                # @!attribute node_id
                #   ID of the node this edge transitions into.
                #
                #   @return [String]
                required :node_id, String

                # @!attribute type
                #
                #   @return [Symbol, :node]
                required :type, const: :node

                # @!method initialize(node_id:, type: :node)
                #   Edge target referencing another node within the same flow.
                #
                #   The runtime transitions the active node to `node_id` and continues processing
                #   within the current assistant's flow.
                #
                #   @param node_id [String] ID of the node this edge transitions into.
                #
                #   @param type [Symbol, :node]
              end

              class Assistant < Telnyx::Internal::Type::BaseModel
                # @!attribute assistant_id
                #   ID of the assistant the conversation transitions to.
                #
                #   @return [String]
                required :assistant_id, String

                # @!attribute type
                #
                #   @return [Symbol, :assistant]
                required :type, const: :assistant

                # @!attribute position
                #   Optional canvas coordinates for rendering the target assistant as a node in
                #   authoring UIs. Pure presentation — the runtime ignores it; round-trips so
                #   frontends can persist graph layout across reloads. When multiple edges target
                #   the same assistant, each edge's `position` is independent (frontends typically
                #   use the first non-null one).
                #
                #   @return [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position, nil]
                optional :position,
                         -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position }

                # @!attribute voice_mode
                #   Voice behavior when handing off to the target assistant, mirroring the handoff
                #   tool's `voice_mode`. `unified` (default) keeps the current voice across the
                #   handoff; `distinct` lets the target assistant speak with its own configured
                #   voice. Only applies to assistant targets — node targets override voice via the
                #   node's own `voice_settings`.
                #
                #   @return [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode, nil]
                optional :voice_mode,
                         enum: -> { Telnyx::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode }

                # @!method initialize(assistant_id:, position: nil, voice_mode: nil, type: :assistant)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant}
                #   for more details.
                #
                #   Edge target referencing a different assistant.
                #
                #   When the edge fires, the conversation hands off to `assistant_id`: the active
                #   assistant on the conversation row is rewritten and the new assistant's flow
                #   starts at its own `start_node_id`. The current turn's LLM response is delivered
                #   to the user as-is; subsequent turns route to the new assistant.
                #
                #   @param assistant_id [String] ID of the assistant the conversation transitions to.
                #
                #   @param position [Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::Position] Optional canvas coordinates for rendering the target assistant as a node in auth
                #
                #   @param voice_mode [Symbol, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant::VoiceMode] Voice behavior when handing off to the target assistant, mirroring the handoff t
                #
                #   @param type [Symbol, :assistant]

                # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant#position
                class Position < Telnyx::Internal::Type::BaseModel
                  # @!attribute x
                  #   Horizontal coordinate in the authoring canvas.
                  #
                  #   @return [Float]
                  required :x, Float

                  # @!attribute y_
                  #   Vertical coordinate in the authoring canvas.
                  #
                  #   @return [Float]
                  required :y_, Float, api_name: :y

                  # @!method initialize(x:, y_:)
                  #   Optional canvas coordinates for rendering the target assistant as a node in
                  #   authoring UIs. Pure presentation — the runtime ignores it; round-trips so
                  #   frontends can persist graph layout across reloads. When multiple edges target
                  #   the same assistant, each edge's `position` is independent (frontends typically
                  #   use the first non-null one).
                  #
                  #   @param x [Float] Horizontal coordinate in the authoring canvas.
                  #
                  #   @param y_ [Float] Vertical coordinate in the authoring canvas.
                end

                # Voice behavior when handing off to the target assistant, mirroring the handoff
                # tool's `voice_mode`. `unified` (default) keeps the current voice across the
                # handoff; `distinct` lets the target assistant speak with its own configured
                # voice. Only applies to assistant targets — node targets override voice via the
                # node's own `voice_settings`.
                #
                # @see Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant#voice_mode
                module VoiceMode
                  extend Telnyx::Internal::Type::Enum

                  UNIFIED = :unified
                  DISTINCT = :distinct

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Node, Telnyx::Models::AI::AssistantCreateParams::ConversationFlow::Edge::Target::Assistant)]
            end
          end
        end
      end
    end
  end
end
