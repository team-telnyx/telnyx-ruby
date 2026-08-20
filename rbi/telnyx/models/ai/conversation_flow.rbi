# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationFlow < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ConversationFlow, Telnyx::Internal::AnyHash)
          end

        # All nodes in the flow.
        sig { returns(T::Array[Telnyx::AI::ConversationFlow::Node::Variants]) }
        attr_accessor :nodes

        # ID of the node where the conversation begins.
        sig { returns(String) }
        attr_accessor :start_node_id

        # Directed transitions between nodes.
        sig { returns(T.nilable(T::Array[Telnyx::AI::FlowEdge])) }
        attr_reader :edges

        sig { params(edges: T::Array[Telnyx::AI::FlowEdge::OrHash]).void }
        attr_writer :edges

        # Conversation flow as returned by the API.
        sig do
          params(
            nodes:
              T::Array[
                T.any(
                  Telnyx::AI::FlowNode::OrHash,
                  Telnyx::AI::ToolNode::OrHash,
                  Telnyx::AI::SpeakNode::OrHash
                )
              ],
            start_node_id: String,
            edges: T::Array[Telnyx::AI::FlowEdge::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # All nodes in the flow.
          nodes:,
          # ID of the node where the conversation begins.
          start_node_id:,
          # Directed transitions between nodes.
          edges: nil
        )
        end

        sig do
          override.returns(
            {
              nodes: T::Array[Telnyx::AI::ConversationFlow::Node::Variants],
              start_node_id: String,
              edges: T::Array[Telnyx::AI::FlowEdge]
            }
          )
        end
        def to_hash
        end

        # One step in a conversation flow, as returned by the API.
        module Node
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::FlowNode,
                Telnyx::AI::ToolNode,
                Telnyx::AI::SpeakNode
              )
            end

          sig do
            override.returns(
              T::Array[Telnyx::AI::ConversationFlow::Node::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
