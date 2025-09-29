# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#list
    class SubNumberOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SubNumberOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SubNumberOrder] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::SubNumberOrder>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
