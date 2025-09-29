# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardOrders#list
    class SimCardOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SimCardOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SimCardOrder] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::SimCardOrder>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
