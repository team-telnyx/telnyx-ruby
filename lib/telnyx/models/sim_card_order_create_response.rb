# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardOrders#create
    class SimCardOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardOrder, nil]
      optional :data, -> { Telnyx::SimCardOrder }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardOrder]
    end
  end
end
