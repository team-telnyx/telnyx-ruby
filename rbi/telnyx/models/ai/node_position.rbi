# typed: strong

module Telnyx
  module Models
    module AI
      class NodePosition < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::NodePosition, Telnyx::Internal::AnyHash)
          end

        # Horizontal coordinate in the authoring canvas.
        sig { returns(Float) }
        attr_accessor :x

        # Vertical coordinate in the authoring canvas.
        sig { returns(Float) }
        attr_accessor :y_

        # 2D coordinates for a node, used by authoring UIs to lay out the graph.
        #
        # Purely a presentation aid. The runtime ignores `position`; it round-trips
        # through the API so frontends can persist the graph layout customers arrange in
        # the editor.
        sig { params(x: Float, y_: Float).returns(T.attached_class) }
        def self.new(
          # Horizontal coordinate in the authoring canvas.
          x:,
          # Vertical coordinate in the authoring canvas.
          y_:
        )
        end

        sig { override.returns({ x: Float, y_: Float }) }
        def to_hash
        end
      end
    end
  end
end
