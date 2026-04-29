# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # Configure AI assistant specifications
        class Versions
          # Retrieves a specific version of an assistant by assistant_id and version_id
          #
          # @overload retrieve(version_id, assistant_id:, include_mcp_servers: nil, request_options: {})
          #
          # @param version_id [String] Path param
          #
          # @param assistant_id [String] Path param
          #
          # @param include_mcp_servers [Boolean] Query param
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::InferenceEmbedding]
          #
          # @see Telnyx::Models::AI::Assistants::VersionRetrieveParams
          def retrieve(version_id, params)
            parsed, options = Telnyx::AI::Assistants::VersionRetrieveParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/versions/%2$s", assistant_id, version_id],
              query: query,
              model: Telnyx::AI::InferenceEmbedding,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Assistants::VersionUpdateParams} for more details.
          #
          # Updates the configuration of a specific assistant version. Can not update main
          # version
          #
          # @overload update(version_id, assistant_id:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_timeout_ms: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, external_llm: nil, fallback_config: nil, greeting: nil, insight_settings: nil, instructions: nil, integrations: nil, interruption_settings: nil, llm_api_key_ref: nil, mcp_servers: nil, messaging_settings: nil, model: nil, name: nil, observability_settings: nil, post_conversation_settings: nil, privacy_settings: nil, tags: nil, telephony_settings: nil, tool_ids: nil, tools: nil, transcription: nil, version_name: nil, voice_settings: nil, widget_settings: nil, request_options: {})
          #
          # @param version_id [String] Path param
          #
          # @param assistant_id [String] Path param
          #
          # @param description [String] Body param
          #
          # @param dynamic_variables [Hash{Symbol=>Object}] Body param: Map of dynamic variables and their default values
          #
          # @param dynamic_variables_webhook_timeout_ms [Integer] Body param: Timeout in milliseconds for the dynamic variables webhook. Must be b
          #
          # @param dynamic_variables_webhook_url [String] Body param: If `dynamic_variables_webhook_url` is set, Telnyx sends a POST reque
          #
          # @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>] Body param
          #
          # @param external_llm [Telnyx::Models::AI::Assistants::UpdateAssistant::ExternalLlm] Body param
          #
          # @param fallback_config [Telnyx::Models::AI::Assistants::UpdateAssistant::FallbackConfig] Body param
          #
          # @param greeting [String] Body param: Text that the assistant will use to start the conversation. This may
          #
          # @param insight_settings [Telnyx::Models::AI::InsightSettings] Body param
          #
          # @param instructions [String] Body param: System instructions for the assistant. These may be templated with [
          #
          # @param integrations [Array<Telnyx::Models::AI::Assistants::UpdateAssistant::Integration>] Body param: Connected integrations attached to the assistant. The catalog of ava
          #
          # @param interruption_settings [Telnyx::Models::AI::Assistants::UpdateAssistant::InterruptionSettings] Body param: Settings for interruptions and how the assistant decides the user ha
          #
          # @param llm_api_key_ref [String] Body param: This is only needed when using third-party inference providers selec
          #
          # @param mcp_servers [Array<Telnyx::Models::AI::Assistants::UpdateAssistant::McpServer>] Body param: MCP servers attached to the assistant. Create MCP servers with `/ai/
          #
          # @param messaging_settings [Telnyx::Models::AI::MessagingSettings] Body param
          #
          # @param model [String] Body param: ID of the model to use when `external_llm` is not set. You can use t
          #
          # @param name [String] Body param
          #
          # @param observability_settings [Telnyx::Models::AI::ObservabilityReq] Body param
          #
          # @param post_conversation_settings [Telnyx::Models::AI::Assistants::UpdateAssistant::PostConversationSettings] Body param: Configuration for post-conversation processing. When enabled, the as
          #
          # @param privacy_settings [Telnyx::Models::AI::PrivacySettings] Body param
          #
          # @param tags [Array<String>] Body param: Tags associated with the assistant. Tags can also be managed with th
          #
          # @param telephony_settings [Telnyx::Models::AI::TelephonySettings] Body param
          #
          # @param tool_ids [Array<String>] Body param: IDs of shared tools to attach to the assistant. New integrations sho
          #
          # @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn>] Body param: Deprecated for new integrations. Inline tool definitions available t
          #
          # @param transcription [Telnyx::Models::AI::TranscriptionSettings] Body param
          #
          # @param version_name [String] Body param: Human-readable name for the assistant version.
          #
          # @param voice_settings [Telnyx::Models::AI::VoiceSettings] Body param
          #
          # @param widget_settings [Telnyx::Models::AI::WidgetSettings] Body param: Configuration settings for the assistant's web widget.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::InferenceEmbedding]
          #
          # @see Telnyx::Models::AI::Assistants::VersionUpdateParams
          def update(version_id, params)
            parsed, options = Telnyx::AI::Assistants::VersionUpdateParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/versions/%2$s", assistant_id, version_id],
              body: parsed,
              model: Telnyx::AI::InferenceEmbedding,
              options: options
            )
          end

          # Retrieves all versions of a specific assistant with complete configuration and
          # metadata
          #
          # @overload list(assistant_id, request_options: {})
          #
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::AssistantsList]
          #
          # @see Telnyx::Models::AI::Assistants::VersionListParams
          def list(assistant_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/versions", assistant_id],
              model: Telnyx::AI::AssistantsList,
              options: params[:request_options]
            )
          end

          # Permanently removes a specific version of an assistant. Can not delete main
          # version
          #
          # @overload delete(version_id, assistant_id:, request_options: {})
          #
          # @param version_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Assistants::VersionDeleteParams
          def delete(version_id, params)
            parsed, options = Telnyx::AI::Assistants::VersionDeleteParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["ai/assistants/%1$s/versions/%2$s", assistant_id, version_id],
              model: NilClass,
              options: options
            )
          end

          # Promotes a specific version to be the main/current version of the assistant.
          # This will delete any existing canary deploy configuration and send all live
          # production traffic to this version.
          #
          # @overload promote(version_id, assistant_id:, request_options: {})
          #
          # @param version_id [String]
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::InferenceEmbedding]
          #
          # @see Telnyx::Models::AI::Assistants::VersionPromoteParams
          def promote(version_id, params)
            parsed, options = Telnyx::AI::Assistants::VersionPromoteParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/versions/%2$s/promote", assistant_id, version_id],
              model: Telnyx::AI::InferenceEmbedding,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
