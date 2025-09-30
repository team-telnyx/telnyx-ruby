# frozen_string_literal: true

module Telnyx
  module Models
    class MonthDetail < Telnyx::Internal::Type::BaseModel
      # @!attribute mrc
      #   Monthly recurring charge amount as decimal string
      #
      #   @return [String]
      required :mrc, String

      # @!attribute quantity
      #   Number of items
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute otc
      #   One-time charge amount as decimal string
      #
      #   @return [String, nil]
      optional :otc, String, nil?: true

      # @!method initialize(mrc:, quantity:, otc: nil)
      #   @param mrc [String] Monthly recurring charge amount as decimal string
      #
      #   @param quantity [Integer] Number of items
      #
      #   @param otc [String, nil] One-time charge amount as decimal string
    end
  end
end
