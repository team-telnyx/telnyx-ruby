# typed: strong

module Telnyx
  module Resources
    class AI
      class Conversations
        sig { returns(Telnyx::Resources::AI::Conversations::InsightGroups) }
        attr_reader :insight_groups

        sig { returns(Telnyx::Resources::AI::Conversations::Insights) }
        attr_reader :insights

        sig { returns(Telnyx::Resources::AI::Conversations::Messages) }
        attr_reader :messages

        # Create a new AI Conversation.
        sig do
          params(
            metadata: T::Hash[Symbol, String],
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::Conversation)
        end
        def create(
          # Metadata associated with the conversation. Set `ai_disabled` to `true` to create
          # the conversation with AI message responses disabled.
          metadata: nil,
          name: nil,
          request_options: {}
        )
        end

        # Retrieve a specific AI conversation by its ID.
        sig do
          params(
            conversation_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ConversationRetrieveResponse)
        end
        def retrieve(
          # The ID of the conversation to retrieve
          conversation_id,
          request_options: {}
        )
        end

        # Update metadata for a specific conversation.
        sig do
          params(
            conversation_id: String,
            metadata: T::Hash[Symbol, String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ConversationUpdateResponse)
        end
        def update(
          # The ID of the conversation to update
          conversation_id,
          # Metadata associated with the conversation. Set `ai_disabled` to `true` to stop
          # AI from responding to messages (e.g., when a human agent takes over). Set to
          # `false` to re-enable AI responses.
          metadata: nil,
          request_options: {}
        )
        end

        # Retrieve a list of all AI conversations configured by the user. Supports
        # [PostgREST-style query parameters](https://postgrest.org/en/stable/api.html#horizontal-filtering-rows)
        # for filtering. Examples are included for the standard metadata fields, but you
        # can filter on any field in the metadata JSON object. For example, to filter by a
        # custom field `metadata->custom_field`, use `metadata->custom_field=eq.value`.
        sig do
          params(
            id: String,
            created_at: String,
            last_message_at: String,
            limit: Integer,
            metadata_assistant_id: String,
            metadata_call_control_id: String,
            metadata_telnyx_agent_target: String,
            metadata_telnyx_conversation_channel: String,
            metadata_telnyx_end_user_target: String,
            name: String,
            or_: String,
            order: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::ConversationListResponse)
        end
        def list(
          # Filter by conversation ID (e.g. id=eq.123)
          id: nil,
          # Filter by creation datetime (e.g., `created_at=gte.2025-01-01`)
          created_at: nil,
          # Filter by last message datetime (e.g., `last_message_at=lte.2025-06-01`)
          last_message_at: nil,
          # Limit the number of returned conversations (e.g., `limit=10`)
          limit: nil,
          # Filter by assistant ID (e.g., `metadata->assistant_id=eq.assistant-123`)
          metadata_assistant_id: nil,
          # Filter by call control ID (e.g., `metadata->call_control_id=eq.v3:123`)
          metadata_call_control_id: nil,
          # Filter by the phone number, SIP URI, or other identifier for the agent (e.g.,
          # `metadata->telnyx_agent_target=eq.+13128675309`)
          metadata_telnyx_agent_target: nil,
          # Filter by conversation channel (e.g.,
          # `metadata->telnyx_conversation_channel=eq.phone_call`)
          metadata_telnyx_conversation_channel: nil,
          # Filter by the phone number, SIP URI, or other identifier for the end user (e.g.,
          # `metadata->telnyx_end_user_target=eq.+13128675309`)
          metadata_telnyx_end_user_target: nil,
          # Filter by conversation Name (e.g. `name=like.Voice%`)
          name: nil,
          # Apply OR conditions using PostgREST syntax (e.g.,
          # `or=(created_at.gte.2025-04-01,last_message_at.gte.2025-04-01)`)
          or_: nil,
          # Order the results by specific fields (e.g., `order=created_at.desc` or
          # `order=last_message_at.asc`)
          order: nil,
          request_options: {}
        )
        end

        # Delete a specific conversation by its ID.
        sig do
          params(
            conversation_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the conversation to delete
          conversation_id,
          request_options: {}
        )
        end

        # Add a new message to the conversation. Used to insert a new messages to a
        # conversation manually ( without using chat endpoint )
        sig do
          params(
            conversation_id: String,
            role: String,
            content: String,
            metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::ConversationAddMessageParams::Metadata::Variants
              ],
            name: String,
            sent_at: Time,
            tool_call_id: String,
            tool_calls: T::Array[T::Hash[Symbol, T.anything]],
            tool_choice:
              Telnyx::AI::ConversationAddMessageParams::ToolChoice::Variants,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def add_message(
          # The ID of the conversation
          conversation_id,
          role:,
          content: nil,
          metadata: nil,
          name: nil,
          sent_at: nil,
          tool_call_id: nil,
          tool_calls: nil,
          tool_choice: nil,
          request_options: {}
        )
        end

        # Retrieve insights for a specific conversation
        sig do
          params(
            conversation_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::AI::ConversationRetrieveConversationsInsightsResponse
          )
        end
        def retrieve_conversations_insights(
          conversation_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
