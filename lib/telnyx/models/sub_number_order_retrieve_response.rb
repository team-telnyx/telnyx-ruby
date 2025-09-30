# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#retrieve
    class SubNumberOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SubNumberOrder, nil]
      optional :data, -> { Telnyx::SubNumberOrder }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SubNumberOrder]
    end
  end
end
