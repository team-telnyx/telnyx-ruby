# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#list
    class NumberBlockOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NumberBlockOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberBlockOrder] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NumberBlockOrder>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
