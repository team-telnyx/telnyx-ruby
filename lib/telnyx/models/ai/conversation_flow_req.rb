# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ConversationFlowReq < Telnyx::Internal::Type::BaseModel
        # @!attribute nodes
        #   All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        #   (`type: prompt`) or a tool node (`type: tool`).
        #
        #   @return [Array<Telnyx::Models::AI::FlowNodeReq, Telnyx::Models::AI::ToolNodeReq, Telnyx::Models::AI::SpeakNodeReq>]
        required :nodes, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::ConversationFlowReq::Node] }

        # @!attribute start_node_id
        #   ID of the node where the conversation begins.
        #
        #   @return [String]
        required :start_node_id, String

        # @!attribute edges
        #   Directed transitions between nodes. May be empty for a single-node flow.
        #
        #   @return [Array<Telnyx::Models::AI::FlowEdge>, nil]
        optional :edges, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::FlowEdge] }

        # @!method initialize(nodes:, start_node_id:, edges: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ConversationFlowReq} for more details.
        #
        #   Conversation flow as supplied by API clients (create / update).
        #
        #   A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        #   unique node/edge IDs, that `start_node_id` references a real node, and that
        #   every edge's endpoints reference real nodes.
        #
        #   @param nodes [Array<Telnyx::Models::AI::FlowNodeReq, Telnyx::Models::AI::ToolNodeReq, Telnyx::Models::AI::SpeakNodeReq>] All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        #
        #   @param start_node_id [String] ID of the node where the conversation begins.
        #
        #   @param edges [Array<Telnyx::Models::AI::FlowEdge>] Directed transitions between nodes. May be empty for a single-node flow.

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
          variant :prompt, -> { Telnyx::AI::FlowNodeReq }

          # A standalone tool step in a conversation flow, as supplied by clients.
          #
          # Unlike a prompt node, a tool node has no instructions or model — it
          # isn't an LLM turn. Reaching it deterministically runs one shared tool
          # (arguments filled from matching dynamic variables by name), then routes
          # on the result via outgoing `tool_result` edges.
          variant :tool, -> { Telnyx::AI::ToolNodeReq }

          # A standalone scripted-message step in a flow, as supplied by clients.
          #
          # Unlike a prompt node, a speak node has no instructions or model — it isn't
          # an LLM turn. Reaching it delivers `message` to the user verbatim (with
          # `{{variable}}` interpolation), then routes via outgoing `llm` /
          # `expression` edges.
          variant :speak, -> { Telnyx::AI::SpeakNodeReq }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::FlowNodeReq, Telnyx::Models::AI::ToolNodeReq, Telnyx::Models::AI::SpeakNodeReq)]
        end
      end
    end
  end
end
