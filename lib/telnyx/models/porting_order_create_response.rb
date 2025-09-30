# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#create
    class PortingOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingOrder>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrder] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::PortingOrder>]
    end
  end
end
