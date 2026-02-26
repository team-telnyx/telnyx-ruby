# frozen_string_literal: true

module Telnyx
  module Models
    class CostInformation < Telnyx::Internal::Type::BaseModel
      # @!attribute currency
      #   The ISO 4217 code for the currency.
      #
      #   @return [String, nil]
      optional :currency, String

      # @!attribute monthly_cost
      #
      #   @return [String, nil]
      optional :monthly_cost, String

      # @!attribute upfront_cost
      #
      #   @return [String, nil]
      optional :upfront_cost, String

      # @!method initialize(currency: nil, monthly_cost: nil, upfront_cost: nil)
      #   @param currency [String] The ISO 4217 code for the currency.
      #
      #   @param monthly_cost [String]
      #
      #   @param upfront_cost [String]
    end
  end
end
