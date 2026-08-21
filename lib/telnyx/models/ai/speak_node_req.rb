# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class SpeakNodeReq < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Caller-supplied unique identifier for this node within the flow.
        #
        #   @return [String]
        required :id, String

        # @!attribute message
        #   Message delivered to the user verbatim when the flow reaches this node. No LLM
        #   turn — the text is spoken/sent exactly as written. `{{variable}}` placeholders
        #   are interpolated from the conversation's dynamic variables; an unresolved
        #   placeholder renders as an empty string. After delivering, the flow routes via
        #   the node's outgoing `llm` / `expression` edges (commonly a single unconditional
        #   edge).
        #
        #   @return [String]
        required :message, String

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

        # @!attribute type
        #   Node kind discriminator. Always `speak` for a speak node.
        #
        #   @return [Symbol, Telnyx::Models::AI::SpeakNodeReq::Type, nil]
        optional :type, enum: -> { Telnyx::AI::SpeakNodeReq::Type }

        # @!method initialize(id:, message:, name: nil, position: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::SpeakNodeReq} for more details.
        #
        #   A standalone scripted-message step in a flow, as supplied by clients.
        #
        #   Unlike a prompt node, a speak node has no instructions or model — it isn't an
        #   LLM turn. Reaching it delivers `message` to the user verbatim (with
        #   `{{variable}}` interpolation), then routes via outgoing `llm` / `expression`
        #   edges.
        #
        #   @param id [String] Caller-supplied unique identifier for this node within the flow.
        #
        #   @param message [String] Message delivered to the user verbatim when the flow reaches this node. No LLM t
        #
        #   @param name [String] Optional human-readable label, displayed in authoring UIs.
        #
        #   @param position [Telnyx::Models::AI::NodePosition] Optional canvas coordinates used by authoring UIs to lay out the graph. Ignored
        #
        #   @param type [Symbol, Telnyx::Models::AI::SpeakNodeReq::Type] Node kind discriminator. Always `speak` for a speak node.

        # Node kind discriminator. Always `speak` for a speak node.
        #
        # @see Telnyx::Models::AI::SpeakNodeReq#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SPEAK = :speak

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
