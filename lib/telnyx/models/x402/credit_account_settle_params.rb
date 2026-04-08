# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      # @see Telnyx::Resources::X402::CreditAccount#settle
      class CreditAccountSettleParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #   The quote ID to settle.
        #
        #   @return [String]
        required :id, String

        # @!attribute payment_signature
        #   Base64-encoded signed payment authorization (x402 PaymentPayload). Can
        #   alternatively be provided via the PAYMENT-SIGNATURE header.
        #
        #   @return [String, nil]
        optional :payment_signature, String

        # @!attribute header_payment_signature
        #
        #   @return [String, nil]
        optional :header_payment_signature, String

        # @!method initialize(id:, payment_signature: nil, header_payment_signature: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::X402::CreditAccountSettleParams} for more details.
        #
        #   @param id [String] The quote ID to settle.
        #
        #   @param payment_signature [String] Base64-encoded signed payment authorization (x402 PaymentPayload). Can alternati
        #
        #   @param header_payment_signature [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
