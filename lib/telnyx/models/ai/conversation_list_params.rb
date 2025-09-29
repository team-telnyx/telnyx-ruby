# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#list
      class ConversationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #   Filter by conversation ID (e.g. id=eq.123)
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   Filter by creation datetime (e.g., `created_at=gte.2025-01-01`)
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute last_message_at
        #   Filter by last message datetime (e.g., `last_message_at=lte.2025-06-01`)
        #
        #   @return [String, nil]
        optional :last_message_at, String

        # @!attribute limit
        #   Limit the number of returned conversations (e.g., `limit=10`)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute metadata_assistant_id
        #   Filter by assistant ID (e.g., `metadata->assistant_id=eq.assistant-123`)
        #
        #   @return [String, nil]
        optional :metadata_assistant_id, String

        # @!attribute metadata_call_control_id
        #   Filter by call control ID (e.g., `metadata->call_control_id=eq.v3:123`)
        #
        #   @return [String, nil]
        optional :metadata_call_control_id, String

        # @!attribute metadata_telnyx_agent_target
        #   Filter by the phone number, SIP URI, or other identifier for the agent (e.g.,
        #   `metadata->telnyx_agent_target=eq.+13128675309`)
        #
        #   @return [String, nil]
        optional :metadata_telnyx_agent_target, String

        # @!attribute metadata_telnyx_conversation_channel
        #   Filter by conversation channel (e.g.,
        #   `metadata->telnyx_conversation_channel=eq.phone_call`)
        #
        #   @return [String, nil]
        optional :metadata_telnyx_conversation_channel, String

        # @!attribute metadata_telnyx_end_user_target
        #   Filter by the phone number, SIP URI, or other identifier for the end user (e.g.,
        #   `metadata->telnyx_end_user_target=eq.+13128675309`)
        #
        #   @return [String, nil]
        optional :metadata_telnyx_end_user_target, String

        # @!attribute name
        #   Filter by conversation Name (e.g. `name=like.Voice%`)
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute or_
        #   Apply OR conditions using PostgREST syntax (e.g.,
        #   `or=(created_at.gte.2025-04-01,last_message_at.gte.2025-04-01)`)
        #
        #   @return [String, nil]
        optional :or_, String

        # @!attribute order
        #   Order the results by specific fields (e.g., `order=created_at.desc` or
        #   `order=last_message_at.asc`)
        #
        #   @return [String, nil]
        optional :order, String

        # @!method initialize(id: nil, created_at: nil, last_message_at: nil, limit: nil, metadata_assistant_id: nil, metadata_call_control_id: nil, metadata_telnyx_agent_target: nil, metadata_telnyx_conversation_channel: nil, metadata_telnyx_end_user_target: nil, name: nil, or_: nil, order: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ConversationListParams} for more details.
        #
        #   @param id [String] Filter by conversation ID (e.g. id=eq.123)
        #
        #   @param created_at [String] Filter by creation datetime (e.g., `created_at=gte.2025-01-01`)
        #
        #   @param last_message_at [String] Filter by last message datetime (e.g., `last_message_at=lte.2025-06-01`)
        #
        #   @param limit [Integer] Limit the number of returned conversations (e.g., `limit=10`)
        #
        #   @param metadata_assistant_id [String] Filter by assistant ID (e.g., `metadata->assistant_id=eq.assistant-123`)
        #
        #   @param metadata_call_control_id [String] Filter by call control ID (e.g., `metadata->call_control_id=eq.v3:123`)
        #
        #   @param metadata_telnyx_agent_target [String] Filter by the phone number, SIP URI, or other identifier for the agent (e.g., `m
        #
        #   @param metadata_telnyx_conversation_channel [String] Filter by conversation channel (e.g., `metadata->telnyx_conversation_channel=eq.
        #
        #   @param metadata_telnyx_end_user_target [String] Filter by the phone number, SIP URI, or other identifier for the end user (e.g.,
        #
        #   @param name [String] Filter by conversation Name (e.g. `name=like.Voice%`)
        #
        #   @param or_ [String] Apply OR conditions using PostgREST syntax (e.g., `or=(created_at.gte.2025-04-01
        #
        #   @param order [String] Order the results by specific fields (e.g., `order=created_at.desc` or `order=la
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
