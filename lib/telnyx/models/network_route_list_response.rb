# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkRoutes#list
    class NetworkRouteListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NetworkRoute>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NetworkRoute] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NetappsCursorPaginationMeta, nil]
      optional :meta, -> { Telnyx::NetappsCursorPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NetworkRoute>]
      #   @param meta [Telnyx::Models::NetappsCursorPaginationMeta]
    end
  end
end
