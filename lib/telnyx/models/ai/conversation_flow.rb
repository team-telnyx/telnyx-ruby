# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ConversationFlow < Telnyx::Internal::Type::BaseModel
        # @!attribute nodes
        #   All nodes in the flow.
        #
        #   @return [Array<Telnyx::Models::AI::FlowNode, Telnyx::Models::AI::ToolNode, Telnyx::Models::AI::SpeakNode>]
        required :nodes, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::ConversationFlow::Node] }

        # @!attribute start_node_id
        #   ID of the node where the conversation begins.
        #
        #   @return [String]
        required :start_node_id, String

        # @!attribute edges
        #   Directed transitions between nodes.
        #
        #   @return [Array<Telnyx::Models::AI::FlowEdge>, nil]
        optional :edges, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::FlowEdge] }

        # @!method initialize(nodes:, start_node_id:, edges: nil)
        #   Conversation flow as returned by the API.
        #
        #   @param nodes [Array<Telnyx::Models::AI::FlowNode, Telnyx::Models::AI::ToolNode, Telnyx::Models::AI::SpeakNode>] All nodes in the flow.
        #
        #   @param start_node_id [String] ID of the node where the conversation begins.
        #
        #   @param edges [Array<Telnyx::Models::AI::FlowEdge>] Directed transitions between nodes.

        # One step in a conversation flow, as returned by the API.
        module Node
          extend Telnyx::Internal::Type::Union

          discriminator :type

          # One step in a conversation flow, as returned by the API.
          variant :prompt, -> { Telnyx::AI::FlowNode }

          # A standalone tool step in a conversation flow, as returned by the API.
          variant :tool, -> { Telnyx::AI::ToolNode }

          # A standalone scripted-message step in a flow, as returned by the API.
          variant :speak, -> { Telnyx::AI::SpeakNode }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::FlowNode, Telnyx::Models::AI::ToolNode, Telnyx::Models::AI::SpeakNode)]
        end
      end
    end
  end
end
