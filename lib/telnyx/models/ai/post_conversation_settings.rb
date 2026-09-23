# frozen_string_literal: true

module Telnyx
  module Models
    module AI
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
        #   {Telnyx::Models::AI::PostConversationSettings} for more details.
        #
        #   Configuration for post-conversation processing. When enabled, the assistant
        #   receives one additional LLM turn after the conversation ends, allowing it to
        #   execute final tool calls such as sending a summary or updating a record via
        #   webhook or function tools. Integration and MCP server tools are not available
        #   post-conversation; call-control tools (e.g. hangup, transfer) are also
        #   unavailable. Beta feature.
        #
        #   @param enabled [Boolean] Whether post-conversation processing is enabled. When true, the assistant will b
      end
    end
  end
end
