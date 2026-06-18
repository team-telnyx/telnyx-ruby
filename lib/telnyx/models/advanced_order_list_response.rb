# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AdvancedOrders#list
    class AdvancedOrderListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AdvancedOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AdvancedOrder] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::AdvancedOrder>]
    end
  end
end
