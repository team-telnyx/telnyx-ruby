# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InexplicitNumberOrders#create
    class InexplicitNumberOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InexplicitNumberOrderResponse, nil]
      optional :data, -> { Telnyx::InexplicitNumberOrderResponse }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::InexplicitNumberOrderResponse]
    end
  end
end
