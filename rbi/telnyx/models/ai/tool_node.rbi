# typed: strong

module Telnyx
  module Models
    module AI
      class ToolNode < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolNode, Telnyx::Internal::AnyHash)
          end

        # Caller-supplied unique identifier for this node within the flow.
        sig { returns(String) }
        attr_accessor :id

        # ID of the single shared (org-level) tool this node executes. When the flow
        # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
        # `tool_result` edges then route on the outcome. Arguments are filled from the
        # conversation's dynamic variables by name — a dynamic variable whose name matches
        # one of the tool's parameters supplies that argument. Cross-validated against the
        # org's shared tools on write.
        sig { returns(String) }
        attr_accessor :shared_tool_id

        # Optional human-readable label, displayed in authoring UIs.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
        # by the runtime; round-trips so frontends can persist graph layout across
        # reloads.
        sig { returns(T.nilable(Telnyx::AI::NodePosition)) }
        attr_reader :position

        sig { params(position: Telnyx::AI::NodePosition::OrHash).void }
        attr_writer :position

        # Full tool definition resolved from `shared_tool_id` server-side. Populated on
        # responses so clients can render the node without a follow-up fetch. Ignored on
        # input — set `shared_tool_id`.
        sig do
          returns(T.nilable(T::Array[Telnyx::AI::AssistantTool::Variants]))
        end
        attr_reader :tool

        sig do
          params(
            tool:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::AssistantTool::ClientSideTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Invite::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash,
                  Telnyx::AI::AssistantTool::Pay::OrHash,
                  Telnyx::AI::AssistantTool::UpdateDynamicVariables::OrHash
                )
              ]
          ).void
        end
        attr_writer :tool

        # Node kind discriminator. Always `tool` for a tool node.
        sig { returns(T.nilable(Telnyx::AI::ToolNode::Type::TaggedSymbol)) }
        attr_reader :type

        sig { params(type: Telnyx::AI::ToolNode::Type::OrSymbol).void }
        attr_writer :type

        # A standalone tool step in a conversation flow, as returned by the API.
        sig do
          params(
            id: String,
            shared_tool_id: String,
            name: String,
            position: Telnyx::AI::NodePosition::OrHash,
            tool:
              T::Array[
                T.any(
                  Telnyx::AI::InferenceEmbeddingWebhookToolParams::OrHash,
                  Telnyx::AI::AssistantTool::ClientSideTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::AssistantTool::Transfer::OrHash,
                  Telnyx::AI::AssistantTool::Invite::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash,
                  Telnyx::AI::AssistantTool::SkipTurn::OrHash,
                  Telnyx::AI::AssistantTool::Pay::OrHash,
                  Telnyx::AI::AssistantTool::UpdateDynamicVariables::OrHash
                )
              ],
            type: Telnyx::AI::ToolNode::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Caller-supplied unique identifier for this node within the flow.
          id:,
          # ID of the single shared (org-level) tool this node executes. When the flow
          # reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
          # `tool_result` edges then route on the outcome. Arguments are filled from the
          # conversation's dynamic variables by name — a dynamic variable whose name matches
          # one of the tool's parameters supplies that argument. Cross-validated against the
          # org's shared tools on write.
          shared_tool_id:,
          # Optional human-readable label, displayed in authoring UIs.
          name: nil,
          # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
          # by the runtime; round-trips so frontends can persist graph layout across
          # reloads.
          position: nil,
          # Full tool definition resolved from `shared_tool_id` server-side. Populated on
          # responses so clients can render the node without a follow-up fetch. Ignored on
          # input — set `shared_tool_id`.
          tool: nil,
          # Node kind discriminator. Always `tool` for a tool node.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              shared_tool_id: String,
              name: String,
              position: Telnyx::AI::NodePosition,
              tool: T::Array[Telnyx::AI::AssistantTool::Variants],
              type: Telnyx::AI::ToolNode::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Node kind discriminator. Always `tool` for a tool node.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::ToolNode::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOOL = T.let(:tool, Telnyx::AI::ToolNode::Type::TaggedSymbol)

          sig do
            override.returns(T::Array[Telnyx::AI::ToolNode::Type::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
