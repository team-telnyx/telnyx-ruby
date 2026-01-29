# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        # @return [Telnyx::Resources::AI::Assistants::Tests]
        attr_reader :tests

        # @return [Telnyx::Resources::AI::Assistants::CanaryDeploys]
        attr_reader :canary_deploys

        # @return [Telnyx::Resources::AI::Assistants::ScheduledEvents]
        attr_reader :scheduled_events

        # @return [Telnyx::Resources::AI::Assistants::Tools]
        attr_reader :tools

        # @return [Telnyx::Resources::AI::Assistants::Versions]
        attr_reader :versions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AssistantCreateParams} for more details.
        #
        # Create a new AI Assistant.
        #
        # @overload create(instructions:, model:, name:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, insight_settings: nil, llm_api_key_ref: nil, messaging_settings: nil, privacy_settings: nil, telephony_settings: nil, tools: nil, transcription: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #
        # @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        # @param model [String] ID of the model to use. You can use the [Get models API](https://developers.teln
        #
        # @param name [String]
        #
        # @param description [String]
        #
        # @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        # @param dynamic_variables_webhook_url [String] If the dynamic_variables_webhook_url is set for the assistant, we will send a re
        #
        # @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        # @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        # @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        # @param llm_api_key_ref [String] This is only needed when using third-party inference providers. The `identifier`
        #
        # @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        # @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        # @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        # @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage>] The tools that the assistant can use. These may be templated with [dynamic varia
        #
        # @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        # @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        # @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::InferenceEmbedding]
        #
        # @see Telnyx::Models::AI::AssistantCreateParams
        def create(params)
          parsed, options = Telnyx::AI::AssistantCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/assistants",
            body: parsed,
            model: Telnyx::AI::InferenceEmbedding,
            options: options
          )
        end

        # Retrieve an AI Assistant configuration by `assistant_id`.
        #
        # @overload retrieve(assistant_id, call_control_id: nil, fetch_dynamic_variables_from_webhook: nil, from: nil, to: nil, request_options: {})
        #
        # @param assistant_id [String]
        # @param call_control_id [String]
        # @param fetch_dynamic_variables_from_webhook [Boolean]
        # @param from [String]
        # @param to [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::InferenceEmbedding]
        #
        # @see Telnyx::Models::AI::AssistantRetrieveParams
        def retrieve(assistant_id, params = {})
          parsed, options = Telnyx::AI::AssistantRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["ai/assistants/%1$s", assistant_id],
            query: parsed,
            model: Telnyx::AI::InferenceEmbedding,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AssistantUpdateParams} for more details.
        #
        # Update an AI Assistant's attributes.
        #
        # @overload update(assistant_id, description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, insight_settings: nil, instructions: nil, llm_api_key_ref: nil, messaging_settings: nil, model: nil, name: nil, privacy_settings: nil, promote_to_main: nil, telephony_settings: nil, tools: nil, transcription: nil, voice_settings: nil, widget_settings: nil, request_options: {})
        #
        # @param assistant_id [String]
        #
        # @param description [String]
        #
        # @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their default values
        #
        # @param dynamic_variables_webhook_url [String] If the dynamic_variables_webhook_url is set for the assistant, we will send a re
        #
        # @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
        #
        # @param greeting [String] Text that the assistant will use to start the conversation. This may be template
        #
        # @param insight_settings [Telnyx::Models::AI::InsightSettings]
        #
        # @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
        #
        # @param llm_api_key_ref [String] This is only needed when using third-party inference providers. The `identifier`
        #
        # @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
        #
        # @param model [String] ID of the model to use. You can use the [Get models API](https://developers.teln
        #
        # @param name [String]
        #
        # @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
        #
        # @param promote_to_main [Boolean] Indicates whether the assistant should be promoted to the main version. Defaults
        #
        # @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
        #
        # @param tools [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage>] The tools that the assistant can use. These may be templated with [dynamic varia
        #
        # @param transcription [Telnyx::Models::AI::TranscriptionSettings]
        #
        # @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        #
        # @param widget_settings [Telnyx::Models::AI::WidgetSettings] Configuration settings for the assistant's web widget.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::InferenceEmbedding]
        #
        # @see Telnyx::Models::AI::AssistantUpdateParams
        def update(assistant_id, params = {})
          parsed, options = Telnyx::AI::AssistantUpdateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["ai/assistants/%1$s", assistant_id],
            body: parsed,
            model: Telnyx::AI::InferenceEmbedding,
            options: options
          )
        end

        # Retrieve a list of all AI Assistants configured by the user.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AssistantsList]
        #
        # @see Telnyx::Models::AI::AssistantListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "ai/assistants",
            model: Telnyx::AI::AssistantsList,
            options: params[:request_options]
          )
        end

        # Delete an AI Assistant by `assistant_id`.
        #
        # @overload delete(assistant_id, request_options: {})
        #
        # @param assistant_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AssistantDeleteResponse]
        #
        # @see Telnyx::Models::AI::AssistantDeleteParams
        def delete(assistant_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/assistants/%1$s", assistant_id],
            model: Telnyx::Models::AI::AssistantDeleteResponse,
            options: params[:request_options]
          )
        end

        # This endpoint allows a client to send a chat message to a specific AI Assistant.
        # The assistant processes the message and returns a relevant reply based on the
        # current conversation context. Refer to the Conversation API to
        # [create a conversation](https://developers.telnyx.com/api-reference/conversations/create-a-conversation),
        # [filter existing conversations](https://developers.telnyx.com/api-reference/conversations/list-conversations),
        # [fetch messages for a conversation](https://developers.telnyx.com/api-reference/conversations/get-conversation-messages),
        # and
        # [manually add messages to a conversation](https://developers.telnyx.com/api-reference/conversations/create-message).
        #
        # @overload chat(assistant_id, content:, conversation_id:, name: nil, request_options: {})
        #
        # @param assistant_id [String]
        #
        # @param content [String] The message content sent by the client to the assistant
        #
        # @param conversation_id [String] A unique identifier for the conversation thread, used to maintain context
        #
        # @param name [String] The optional display name of the user sending the message
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AssistantChatResponse]
        #
        # @see Telnyx::Models::AI::AssistantChatParams
        def chat(assistant_id, params)
          parsed, options = Telnyx::AI::AssistantChatParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["ai/assistants/%1$s/chat", assistant_id],
            body: parsed,
            model: Telnyx::Models::AI::AssistantChatResponse,
            options: options
          )
        end

        # Clone an existing assistant, excluding telephony and messaging settings.
        #
        # @overload clone_(assistant_id, request_options: {})
        #
        # @param assistant_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::InferenceEmbedding]
        #
        # @see Telnyx::Models::AI::AssistantCloneParams
        def clone_(assistant_id, params = {})
          @client.request(
            method: :post,
            path: ["ai/assistants/%1$s/clone", assistant_id],
            model: Telnyx::AI::InferenceEmbedding,
            options: params[:request_options]
          )
        end

        # Get an assistant texml by `assistant_id`.
        #
        # @overload get_texml(assistant_id, request_options: {})
        #
        # @param assistant_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [String]
        #
        # @see Telnyx::Models::AI::AssistantGetTexmlParams
        def get_texml(assistant_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/assistants/%1$s/texml", assistant_id],
            model: String,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::AssistantImportsParams} for more details.
        #
        # Import assistants from external providers. Any assistant that has already been
        # imported will be overwritten with its latest version from the importing
        # provider.
        #
        # @overload imports(api_key_ref:, provider:, import_ids: nil, request_options: {})
        #
        # @param api_key_ref [String] Integration secret pointer that refers to the API key for the external provider.
        #
        # @param provider [Symbol, Telnyx::Models::AI::AssistantImportsParams::Provider] The external provider to import assistants from.
        #
        # @param import_ids [Array<String>] Optional list of assistant IDs to import from the external provider. If not prov
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AssistantsList]
        #
        # @see Telnyx::Models::AI::AssistantImportsParams
        def imports(params)
          parsed, options = Telnyx::AI::AssistantImportsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/assistants/import",
            body: parsed,
            model: Telnyx::AI::AssistantsList,
            options: options
          )
        end

        # Send an SMS message for an assistant. This endpoint:
        #
        # 1. Validates the assistant exists and has messaging profile configured
        # 2. If should_create_conversation is true, creates a new conversation with
        #    metadata
        # 3. Sends the SMS message (If `text` is set, this will be sent. Otherwise, if
        #    this is the first message in the conversation and the assistant has a
        #    `greeting` configured, this will be sent. Otherwise the assistant will
        #    generate the text to send.)
        # 4. Updates conversation metadata if provided
        # 5. Returns the conversation ID
        #
        # @overload send_sms(assistant_id, from:, to:, conversation_metadata: nil, should_create_conversation: nil, text: nil, request_options: {})
        #
        # @param assistant_id [String]
        # @param from [String]
        # @param to [String]
        # @param conversation_metadata [Hash{Symbol=>String, Integer, Boolean}]
        # @param should_create_conversation [Boolean]
        # @param text [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::AssistantSendSMSResponse]
        #
        # @see Telnyx::Models::AI::AssistantSendSMSParams
        def send_sms(assistant_id, params)
          parsed, options = Telnyx::AI::AssistantSendSMSParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["ai/assistants/%1$s/chat/sms", assistant_id],
            body: parsed,
            model: Telnyx::Models::AI::AssistantSendSMSResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @tests = Telnyx::Resources::AI::Assistants::Tests.new(client: client)
          @canary_deploys = Telnyx::Resources::AI::Assistants::CanaryDeploys.new(client: client)
          @scheduled_events = Telnyx::Resources::AI::Assistants::ScheduledEvents.new(client: client)
          @tools = Telnyx::Resources::AI::Assistants::Tools.new(client: client)
          @versions = Telnyx::Resources::AI::Assistants::Versions.new(client: client)
        end
      end
    end
  end
end
