# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class NodePosition < Telnyx::Internal::Type::BaseModel
        # @!attribute x
        #   Horizontal coordinate in the authoring canvas.
        #
        #   @return [Float]
        required :x, Float

        # @!attribute y_
        #   Vertical coordinate in the authoring canvas.
        #
        #   @return [Float]
        required :y_, Float, api_name: :y

        # @!method initialize(x:, y_:)
        #   2D coordinates for a node, used by authoring UIs to lay out the graph.
        #
        #   Purely a presentation aid. The runtime ignores `position`; it round-trips
        #   through the API so frontends can persist the graph layout customers arrange in
        #   the editor.
        #
        #   @param x [Float] Horizontal coordinate in the authoring canvas.
        #
        #   @param y_ [Float] Vertical coordinate in the authoring canvas.
      end
    end
  end
end
