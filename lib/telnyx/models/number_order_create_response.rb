# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrders#create
    class NumberOrderCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderWithPhoneNumbers, nil]
      optional :data, -> { Telnyx::NumberOrderWithPhoneNumbers }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberOrderWithPhoneNumbers]
    end
  end
end
