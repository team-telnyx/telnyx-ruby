# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#create
    class NumberBlockOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberBlockOrder, nil]
      optional :data, -> { Telnyx::NumberBlockOrder }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberBlockOrder]
    end
  end
end
