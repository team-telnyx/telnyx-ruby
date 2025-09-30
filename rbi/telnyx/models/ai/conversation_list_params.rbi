# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ConversationListParams, Telnyx::Internal::AnyHash)
          end

        # Filter by conversation ID (e.g. id=eq.123)
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Filter by creation datetime (e.g., `created_at=gte.2025-01-01`)
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Filter by last message datetime (e.g., `last_message_at=lte.2025-06-01`)
        sig { returns(T.nilable(String)) }
        attr_reader :last_message_at

        sig { params(last_message_at: String).void }
        attr_writer :last_message_at

        # Limit the number of returned conversations (e.g., `limit=10`)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by assistant ID (e.g., `metadata->assistant_id=eq.assistant-123`)
        sig { returns(T.nilable(String)) }
        attr_reader :metadata_assistant_id

        sig { params(metadata_assistant_id: String).void }
        attr_writer :metadata_assistant_id

        # Filter by call control ID (e.g., `metadata->call_control_id=eq.v3:123`)
        sig { returns(T.nilable(String)) }
        attr_reader :metadata_call_control_id

        sig { params(metadata_call_control_id: String).void }
        attr_writer :metadata_call_control_id

        # Filter by the phone number, SIP URI, or other identifier for the agent (e.g.,
        # `metadata->telnyx_agent_target=eq.+13128675309`)
        sig { returns(T.nilable(String)) }
        attr_reader :metadata_telnyx_agent_target

        sig { params(metadata_telnyx_agent_target: String).void }
        attr_writer :metadata_telnyx_agent_target

        # Filter by conversation channel (e.g.,
        # `metadata->telnyx_conversation_channel=eq.phone_call`)
        sig { returns(T.nilable(String)) }
        attr_reader :metadata_telnyx_conversation_channel

        sig { params(metadata_telnyx_conversation_channel: String).void }
        attr_writer :metadata_telnyx_conversation_channel

        # Filter by the phone number, SIP URI, or other identifier for the end user (e.g.,
        # `metadata->telnyx_end_user_target=eq.+13128675309`)
        sig { returns(T.nilable(String)) }
        attr_reader :metadata_telnyx_end_user_target

        sig { params(metadata_telnyx_end_user_target: String).void }
        attr_writer :metadata_telnyx_end_user_target

        # Filter by conversation Name (e.g. `name=like.Voice%`)
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Apply OR conditions using PostgREST syntax (e.g.,
        # `or=(created_at.gte.2025-04-01,last_message_at.gte.2025-04-01)`)
        sig { returns(T.nilable(String)) }
        attr_reader :or_

        sig { params(or_: String).void }
        attr_writer :or_

        # Order the results by specific fields (e.g., `order=created_at.desc` or
        # `order=last_message_at.asc`)
        sig { returns(T.nilable(String)) }
        attr_reader :order

        sig { params(order: String).void }
        attr_writer :order

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
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
