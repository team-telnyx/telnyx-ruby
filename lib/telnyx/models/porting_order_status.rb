# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderStatus < Telnyx::Internal::Type::BaseModel
      # @!attribute details
      #   A list of 0 or more details about this porting order's status
      #
      #   @return [Array<Telnyx::Models::PortingOrdersExceptionType>, nil]
      optional :details, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrdersExceptionType] }

      # @!attribute value
      #   The current status of the porting order
      #
      #   @return [Symbol, Telnyx::Models::PortingOrderStatus::Value, nil]
      optional :value, enum: -> { Telnyx::PortingOrderStatus::Value }

      # @!method initialize(details: nil, value: nil)
      #   Porting order status
      #
      #   @param details [Array<Telnyx::Models::PortingOrdersExceptionType>] A list of 0 or more details about this porting order's status
      #
      #   @param value [Symbol, Telnyx::Models::PortingOrderStatus::Value] The current status of the porting order

      # The current status of the porting order
      #
      # @see Telnyx::Models::PortingOrderStatus#value
      module Value
        extend Telnyx::Internal::Type::Enum

        DRAFT = :draft
        IN_PROCESS = :"in-process"
        SUBMITTED = :submitted
        EXCEPTION = :exception
        FOC_DATE_CONFIRMED = :"foc-date-confirmed"
        PORTED = :ported
        CANCELLED = :cancelled
        CANCEL_PENDING = :"cancel-pending"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
