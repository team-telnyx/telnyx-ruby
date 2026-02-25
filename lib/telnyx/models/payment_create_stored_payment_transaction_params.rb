# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Payment#create_stored_payment_transaction
    class PaymentCreateStoredPaymentTransactionParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute amount
      #   Amount in dollars and cents, e.g. "120.00"
      #
      #   @return [String]
      required :amount, String

      # @!method initialize(amount:, request_options: {})
      #   @param amount [String] Amount in dollars and cents, e.g. "120.00"
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
