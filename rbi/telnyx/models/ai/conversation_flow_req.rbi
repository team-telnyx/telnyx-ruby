# typed: strong

module Telnyx
  module Models
    module AI
      class ConversationFlowReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ConversationFlowReq, Telnyx::Internal::AnyHash)
          end

        # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
        # (`type: prompt`) or a tool node (`type: tool`).
        sig do
          returns(
            T::Array[
              T.any(
                Telnyx::AI::FlowNodeReq,
                Telnyx::AI::ToolNodeReq,
                Telnyx::AI::SpeakNodeReq
              )
            ]
          )
        end
        attr_accessor :nodes

        # ID of the node where the conversation begins.
        sig { returns(String) }
        attr_accessor :start_node_id

        # Directed transitions between nodes. May be empty for a single-node flow.
        sig { returns(T.nilable(T::Array[Telnyx::AI::FlowEdge])) }
        attr_reader :edges

        sig { params(edges: T::Array[Telnyx::AI::FlowEdge::OrHash]).void }
        attr_writer :edges

        # Conversation flow as supplied by API clients (create / update).
        #
        # A directed graph of `FlowNodeReq` connected by `FlowEdge`s. Validation enforces
        # unique node/edge IDs, that `start_node_id` references a real node, and that
        # every edge's endpoints reference real nodes.
        sig do
          params(
            nodes:
              T::Array[
                T.any(
                  Telnyx::AI::FlowNodeReq::OrHash,
                  Telnyx::AI::ToolNodeReq::OrHash,
                  Telnyx::AI::SpeakNodeReq::OrHash
                )
              ],
            start_node_id: String,
            edges: T::Array[Telnyx::AI::FlowEdge::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # All nodes in the flow. Must contain `start_node_id`. Each node is a prompt node
          # (`type: prompt`) or a tool node (`type: tool`).
          nodes:,
          # ID of the node where the conversation begins.
          start_node_id:,
          # Directed transitions between nodes. May be empty for a single-node flow.
          edges: nil
        )
        end

        sig do
          override.returns(
            {
              nodes:
                T::Array[
                  T.any(
                    Telnyx::AI::FlowNodeReq,
                    Telnyx::AI::ToolNodeReq,
                    Telnyx::AI::SpeakNodeReq
                  )
                ],
              start_node_id: String,
              edges: T::Array[Telnyx::AI::FlowEdge]
            }
          )
        end
        def to_hash
        end

        # One step in a conversation flow, as supplied by API clients.
        #
        # Each node carries the prompt, tool scope, and optional overrides for
        # model/voice/transcription. Unset overrides cascade from the assistant.
        module Node
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::FlowNodeReq,
                Telnyx::AI::ToolNodeReq,
                Telnyx::AI::SpeakNodeReq
              )
            end

          sig do
            override.returns(
              T::Array[Telnyx::AI::ConversationFlowReq::Node::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
