# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Conversations
        # @return [Telnyx::Resources::AI::Conversations::InsightGroups]
        attr_reader :insight_groups

        # @return [Telnyx::Resources::AI::Conversations::Insights]
        attr_reader :insights

        # @return [Telnyx::Resources::AI::Conversations::Messages]
        attr_reader :messages

        # Create a new AI Conversation.
        #
        # @overload create(metadata: nil, name: nil, request_options: {})
        #
        # @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation.
        #
        # @param name [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::Conversation]
        #
        # @see Telnyx::Models::AI::ConversationCreateParams
        def create(params = {})
          parsed, options = Telnyx::AI::ConversationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/conversations",
            body: parsed,
            model: Telnyx::AI::Conversation,
            options: options
          )
        end

        # Retrieve a specific AI conversation by its ID.
        #
        # @overload retrieve(conversation_id, request_options: {})
        #
        # @param conversation_id [String] The ID of the conversation to retrieve
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ConversationRetrieveResponse]
        #
        # @see Telnyx::Models::AI::ConversationRetrieveParams
        def retrieve(conversation_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/conversations/%1$s", conversation_id],
            model: Telnyx::Models::AI::ConversationRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update metadata for a specific conversation.
        #
        # @overload update(conversation_id, metadata: nil, request_options: {})
        #
        # @param conversation_id [String] The ID of the conversation to update
        #
        # @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ConversationUpdateResponse]
        #
        # @see Telnyx::Models::AI::ConversationUpdateParams
        def update(conversation_id, params = {})
          parsed, options = Telnyx::AI::ConversationUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["ai/conversations/%1$s", conversation_id],
            body: parsed,
            model: Telnyx::Models::AI::ConversationUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::ConversationListParams} for more details.
        #
        # Retrieve a list of all AI conversations configured by the user. Supports
        # [PostgREST-style query parameters](https://postgrest.org/en/stable/api.html#horizontal-filtering-rows)
        # for filtering. Examples are included for the standard metadata fields, but you
        # can filter on any field in the metadata JSON object. For example, to filter by a
        # custom field `metadata->custom_field`, use `metadata->custom_field=eq.value`.
        #
        # @overload list(id: nil, created_at: nil, last_message_at: nil, limit: nil, metadata_assistant_id: nil, metadata_call_control_id: nil, metadata_telnyx_agent_target: nil, metadata_telnyx_conversation_channel: nil, metadata_telnyx_end_user_target: nil, name: nil, or_: nil, order: nil, request_options: {})
        #
        # @param id [String] Filter by conversation ID (e.g. id=eq.123)
        #
        # @param created_at [String] Filter by creation datetime (e.g., `created_at=gte.2025-01-01`)
        #
        # @param last_message_at [String] Filter by last message datetime (e.g., `last_message_at=lte.2025-06-01`)
        #
        # @param limit [Integer] Limit the number of returned conversations (e.g., `limit=10`)
        #
        # @param metadata_assistant_id [String] Filter by assistant ID (e.g., `metadata->assistant_id=eq.assistant-123`)
        #
        # @param metadata_call_control_id [String] Filter by call control ID (e.g., `metadata->call_control_id=eq.v3:123`)
        #
        # @param metadata_telnyx_agent_target [String] Filter by the phone number, SIP URI, or other identifier for the agent (e.g., `m
        #
        # @param metadata_telnyx_conversation_channel [String] Filter by conversation channel (e.g., `metadata->telnyx_conversation_channel=eq.
        #
        # @param metadata_telnyx_end_user_target [String] Filter by the phone number, SIP URI, or other identifier for the end user (e.g.,
        #
        # @param name [String] Filter by conversation Name (e.g. `name=like.Voice%`)
        #
        # @param or_ [String] Apply OR conditions using PostgREST syntax (e.g., `or=(created_at.gte.2025-04-01
        #
        # @param order [String] Order the results by specific fields (e.g., `order=created_at.desc` or `order=la
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ConversationListResponse]
        #
        # @see Telnyx::Models::AI::ConversationListParams
        def list(params = {})
          parsed, options = Telnyx::AI::ConversationListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "ai/conversations",
            query: parsed.transform_keys(
              metadata_assistant_id: "metadata->assistant_id",
              metadata_call_control_id: "metadata->call_control_id",
              metadata_telnyx_agent_target: "metadata->telnyx_agent_target",
              metadata_telnyx_conversation_channel: "metadata->telnyx_conversation_channel",
              metadata_telnyx_end_user_target: "metadata->telnyx_end_user_target",
              or_: "or"
            ),
            model: Telnyx::Models::AI::ConversationListResponse,
            options: options
          )
        end

        # Delete a specific conversation by its ID.
        #
        # @overload delete(conversation_id, request_options: {})
        #
        # @param conversation_id [String] The ID of the conversation to delete
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::ConversationDeleteParams
        def delete(conversation_id, params = {})
          @client.request(
            method: :delete,
            path: ["ai/conversations/%1$s", conversation_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Add a new message to the conversation. Used to insert a new messages to a
        # conversation manually ( without using chat endpoint )
        #
        # @overload add_message(conversation_id, role:, content: nil, metadata: nil, name: nil, sent_at: nil, tool_call_id: nil, tool_calls: nil, tool_choice: nil, request_options: {})
        #
        # @param conversation_id [String] The ID of the conversation
        #
        # @param role [String]
        #
        # @param content [String]
        #
        # @param metadata [Hash{Symbol=>String, Integer, Boolean, Array<String, Integer, Boolean>}]
        #
        # @param name [String]
        #
        # @param sent_at [Time]
        #
        # @param tool_call_id [String]
        #
        # @param tool_calls [Array<Hash{Symbol=>Object}>]
        #
        # @param tool_choice [String, Hash{Symbol=>Object}]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::ConversationAddMessageParams
        def add_message(conversation_id, params)
          parsed, options = Telnyx::AI::ConversationAddMessageParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["ai/conversations/%1$s/message", conversation_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Retrieve insights for a specific conversation
        #
        # @overload retrieve_conversations_insights(conversation_id, request_options: {})
        #
        # @param conversation_id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse]
        #
        # @see Telnyx::Models::AI::ConversationRetrieveConversationsInsightsParams
        def retrieve_conversations_insights(conversation_id, params = {})
          @client.request(
            method: :get,
            path: ["ai/conversations/%1$s/conversations-insights", conversation_id],
            model: Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @insight_groups = Telnyx::Resources::AI::Conversations::InsightGroups.new(client: client)
          @insights = Telnyx::Resources::AI::Conversations::Insights.new(client: client)
          @messages = Telnyx::Resources::AI::Conversations::Messages.new(client: client)
        end
      end
    end
  end
end
