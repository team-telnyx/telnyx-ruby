# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#list
    class PortingOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrder] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PortingOrder>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
