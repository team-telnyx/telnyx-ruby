# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MachinePayments#account_credit
    class MachinePaymentAccountCreditParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute amount_usd
      #   Amount to credit in USD, as a decimal string with up to two fractional digits
      #   (by default between 5.00 and 500.00). The request body is required on the
      #   initial challenge request and remains required on a paid retry, where you
      #   re-send the identical body plus the payment credential — the credential, not the
      #   body, selects the payment, and the retried body is not re-validated.
      #
      #   @return [String]
      required :amount_usd, String

      # @!method initialize(amount_usd:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MachinePaymentAccountCreditParams} for more details.
      #
      #   @param amount_usd [String] Amount to credit in USD, as a decimal string with up to two fractional digits (b
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
