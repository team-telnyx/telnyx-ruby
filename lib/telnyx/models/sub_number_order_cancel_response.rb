# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#cancel
    class SubNumberOrderCancelResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumbersSubNumberOrder, nil]
      optional :data, -> { Telnyx::NumbersSubNumberOrder }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumbersSubNumberOrder]
    end
  end
end
