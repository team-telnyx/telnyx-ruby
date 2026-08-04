# frozen_string_literal: true

module Telnyx
  module Models
    module Pricing
      class PricingTier < Telnyx::Internal::Type::BaseModel
        # @!attribute max
        #   Upper bound of the tier (exclusive). Null means no upper limit.
        #
        #   @return [Integer, nil]
        required :max, Integer, nil?: true

        # @!attribute min
        #   Lower bound of the tier (inclusive).
        #
        #   @return [Integer]
        required :min, Integer

        # @!attribute rate
        #   Rate for this tier. Numeric for standard products, string for inference
        #   products.
        #
        #   @return [Float, String]
        required :rate, union: -> { Telnyx::Pricing::PricingTier::Rate }

        # @!method initialize(max:, min:, rate:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Pricing::PricingTier} for more details.
        #
        #   @param max [Integer, nil] Upper bound of the tier (exclusive). Null means no upper limit.
        #
        #   @param min [Integer] Lower bound of the tier (inclusive).
        #
        #   @param rate [Float, String] Rate for this tier. Numeric for standard products, string for inference products

        # Rate for this tier. Numeric for standard products, string for inference
        # products.
        #
        # @see Telnyx::Models::Pricing::PricingTier#rate
        module Rate
          extend Telnyx::Internal::Type::Union

          variant Float

          variant String

          # @!method self.variants
          #   @return [Array(Float, String)]
        end
      end
    end

    PricingTier = Pricing::PricingTier
  end
end
