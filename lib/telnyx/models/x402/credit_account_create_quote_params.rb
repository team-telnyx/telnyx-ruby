# frozen_string_literal: true

module Telnyx
  module Models
    module X402
      # @see Telnyx::Resources::X402::CreditAccount#create_quote
      class CreditAccountCreateQuoteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute amount_usd
        #   Amount in USD to fund (minimum 5.00, maximum 10000.00).
        #
        #   @return [String]
        required :amount_usd, String

        # @!method initialize(amount_usd:, request_options: {})
        #   @param amount_usd [String] Amount in USD to fund (minimum 5.00, maximum 10000.00).
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
