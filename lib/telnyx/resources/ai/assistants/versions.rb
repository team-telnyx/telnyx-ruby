# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class Versions
          # Retrieves a specific version of an assistant by assistant_id and version_id
          #
          # @overload retrieve(version_id, assistant_id:, include_mcp_servers: nil, request_options: {})
          #
          # @param version_id [String] Path param:
          #
          # @param assistant_id [String] Path param:
          #
          # @param include_mcp_servers [Boolean] Query param:
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::InferenceEmbedding]
          #
          # @see Telnyx::Models::AI::Assistants::VersionRetrieveParams
          def retrieve(version_id, params)
            parsed, options = Telnyx::AI::Assistants::VersionRetrieveParams.dump_request(params)
            assistant_id =
              parsed.delete(:assistant_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/versions/%2$s", assistant_id, version_id],
              query: parsed,
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
          # @overload update(version_id, assistant_id:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, insight_settings: nil, instructions: nil, llm_api_key_ref: nil, messaging_settings: nil, model: nil, name: nil, privacy_settings: nil, telephony_settings: nil, tools: nil, transcription: nil, voice_settings: nil, request_options: {})
          #
          # @param version_id [String] Path param:
          #
          # @param assistant_id [String] Path param:
          #
          # @param description [String] Body param:
          #
          # @param dynamic_variables [Hash{Symbol=>Object}] Body param: Map of dynamic variables and their default values
          #
          # @param dynamic_variables_webhook_url [String] Body param: If the dynamic_variables_webhook_url is set for the assistant, we wi
          #
          # @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>] Body param:
          #
          # @param greeting [String] Body param: Text that the assistant will use to start the conversation. This may
          #
          # @param insight_settings [Telnyx::Models::AI::InsightSettings] Body param:
          #
          # @param instructions [String] Body param: System instructions for the assistant. These may be templated with [
          #
          # @param llm_api_key_ref [String] Body param: This is only needed when using third-party inference providers. The
          #
          # @param messaging_settings [Telnyx::Models::AI::MessagingSettings] Body param:
          #
          # @param model [String] Body param: ID of the model to use. You can use the [Get models API](https://dev
          #
          # @param name [String] Body param:
          #
          # @param privacy_settings [Telnyx::Models::AI::PrivacySettings] Body param:
          #
          # @param telephony_settings [Telnyx::Models::AI::TelephonySettings] Body param:
          #
          # @param tools [Array<Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::HandoffTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::AssistantTool::SipReferTool, Telnyx::Models::AI::AssistantTool::DtmfTool>] Body param: The tools that the assistant can use. These may be templated with [d
          #
          # @param transcription [Telnyx::Models::AI::TranscriptionSettings] Body param:
          #
          # @param voice_settings [Telnyx::Models::AI::VoiceSettings] Body param:
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
