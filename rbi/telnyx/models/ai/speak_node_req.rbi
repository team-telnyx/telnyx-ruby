# typed: strong

module Telnyx
  module Models
    module AI
      class SpeakNodeReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::SpeakNodeReq, Telnyx::Internal::AnyHash)
          end

        # Caller-supplied unique identifier for this node within the flow.
        sig { returns(String) }
        attr_accessor :id

        # Message delivered to the user verbatim when the flow reaches this node. No LLM
        # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
        # are interpolated from the conversation's dynamic variables; an unresolved
        # placeholder renders as an empty string. After delivering, the flow routes via
        # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
        # edge).
        sig { returns(String) }
        attr_accessor :message

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

        # Node kind discriminator. Always `speak` for a speak node.
        sig { returns(T.nilable(Telnyx::AI::SpeakNodeReq::Type::OrSymbol)) }
        attr_reader :type

        sig { params(type: Telnyx::AI::SpeakNodeReq::Type::OrSymbol).void }
        attr_writer :type

        # A standalone scripted-message step in a flow, as supplied by clients.
        #
        # Unlike a prompt node, a speak node has no instructions or model — it isn't an
        # LLM turn. Reaching it delivers `message` to the user verbatim (with
        # `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
        # edges.
        sig do
          params(
            id: String,
            message: String,
            name: String,
            position: Telnyx::AI::NodePosition::OrHash,
            type: Telnyx::AI::SpeakNodeReq::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Caller-supplied unique identifier for this node within the flow.
          id:,
          # Message delivered to the user verbatim when the flow reaches this node. No LLM
          # turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
          # are interpolated from the conversation's dynamic variables; an unresolved
          # placeholder renders as an empty string. After delivering, the flow routes via
          # the node's outgoing `llm` / `expression` edges (commonly a single unconditional
          # edge).
          message:,
          # Optional human-readable label, displayed in authoring UIs.
          name: nil,
          # Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
          # by the runtime; round-trips so frontends can persist graph layout across
          # reloads.
          position: nil,
          # Node kind discriminator. Always `speak` for a speak node.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              message: String,
              name: String,
              position: Telnyx::AI::NodePosition,
              type: Telnyx::AI::SpeakNodeReq::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Node kind discriminator. Always `speak` for a speak node.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::SpeakNodeReq::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SPEAK = T.let(:speak, Telnyx::AI::SpeakNodeReq::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::SpeakNodeReq::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
