# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve_exception_types
    class PortingOrderRetrieveExceptionTypesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingOrdersExceptionType>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrdersExceptionType] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::PortingOrdersExceptionType>]
    end
  end
end
