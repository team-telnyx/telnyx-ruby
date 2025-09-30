# frozen_string_literal: true

module Telnyx
  module Models
    class ConsumedData < Telnyx::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String, nil]
      optional :amount, String

      # @!attribute unit
      #
      #   @return [String, nil]
      optional :unit, String

      # @!method initialize(amount: nil, unit: nil)
      #   Represents the amount of data consumed.
      #
      #   @param amount [String]
      #   @param unit [String]
    end
  end
end
