# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ToolNode < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Caller-supplied unique identifier for this node within the flow.
        #
        #   @return [String]
        required :id, String

        # @!attribute shared_tool_id
        #   ID of the single shared (org-level) tool this node executes. When the flow
        #   reaches this node the tool runs as a deliberate step (no LLM turn); its outgoing
        #   `tool_result` edges then route on the outcome. Arguments are filled from the
        #   conversation's dynamic variables by name — a dynamic variable whose name matches
        #   one of the tool's parameters supplies that argument. Cross-validated against the
        #   org's shared tools on write.
        #
        #   @return [String]
        required :shared_tool_id, String

        # @!attribute name
        #   Optional human-readable label, displayed in authoring UIs.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute position
        #   Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
        #   by the runtime; round-trips so frontends can persist graph layout across
        #   reloads.
        #
        #   @return [Telnyx::Models::AI::NodePosition, nil]
        optional :position, -> { Telnyx::AI::NodePosition }

        # @!attribute tool
        #   Full tool definition resolved from `shared_tool_id` server-side. Populated on
        #   responses so clients can render the node without a follow-up fetch. Ignored on
        #   input — set `shared_tool_id`.
        #
        #   @return [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::AssistantTool::ClientSideTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn, Telnyx::Models::AI::AssistantTool::Pay, Telnyx::Models::AI::AssistantTool::UpdateDynamicVariables>, nil]
        optional :tool, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool] }

        # @!attribute type
        #   Node kind discriminator. Always `tool` for a tool node.
        #
        #   @return [Symbol, Telnyx::Models::AI::ToolNode::Type, nil]
        optional :type, enum: -> { Telnyx::AI::ToolNode::Type }

        # @!method initialize(id:, shared_tool_id:, name: nil, position: nil, tool: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ToolNode} for more details.
        #
        #   A standalone tool step in a conversation flow, as returned by the API.
        #
        #   @param id [String] Caller-supplied unique identifier for this node within the flow.
        #
        #   @param shared_tool_id [String] ID of the single shared (org-level) tool this node executes. When the flow reach
        #
        #   @param name [String] Optional human-readable label, displayed in authoring UIs.
        #
        #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
        #
        #   @param tool [Array<Telnyx::Models::AI::InferenceEmbeddingWebhookToolParams, Telnyx::Models::AI::AssistantTool::ClientSideTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::Handoff, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::AssistantTool::Transfer, Telnyx::Models::AI::AssistantTool::Invite, Telnyx::Models::AI::AssistantTool::Refer, Telnyx::Models::AI::AssistantTool::SendDtmf, Telnyx::Models::AI::AssistantTool::SendMessage, Telnyx::Models::AI::AssistantTool::SkipTurn, Telnyx::Models::AI::AssistantTool::Pay, Telnyx::Models::AI::AssistantTool::UpdateDynamicVariables>] Full tool definition resolved from `shared_tool_id` server-side. Populated on re
        #
        #   @param type [Symbol, Telnyx::Models::AI::ToolNode::Type] Node kind discriminator. Always `tool` for a tool node.

        # Node kind discriminator. Always `tool` for a tool node.
        #
        # @see Telnyx::Models::AI::ToolNode#type
        module Type
          extend Telnyx::Internal::Type::Enum

          TOOL = :tool

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
