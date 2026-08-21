# typed: strong

module Telnyx
  module Models
    module AI
      class ToolNodeReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolNodeReq, Telnyx::Internal::AnyHash)
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

        # Node kind discriminator. Always `tool` for a tool node.
        sig { returns(T.nilable(Telnyx::AI::ToolNodeReq::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: Telnyx::AI::ToolNodeReq::Type::OrSymbol).void }
        attr_writer :type

        # A standalone tool step in a conversation flow, as supplied by clients.
        #
        # Unlike a prompt node, a tool node has no instructions or model — it isn't an LLM
        # turn. Reaching it deterministically runs one shared tool (arguments filled from
        # matching dynamic variables by name), then routes on the result via outgoing
        # `tool_result` edges.
        sig do
          params(
            id: String,
            shared_tool_id: String,
            name: String,
            position: Telnyx::AI::NodePosition::OrHash,
            type: Telnyx::AI::ToolNodeReq::Type::OrSymbol
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
              type: Telnyx::AI::ToolNodeReq::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Node kind discriminator. Always `tool` for a tool node.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::ToolNodeReq::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOOL = T.let(:tool, Telnyx::AI::ToolNodeReq::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::ToolNodeReq::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
