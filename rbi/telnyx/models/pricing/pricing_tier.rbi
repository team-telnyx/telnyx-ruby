# typed: strong

module Telnyx
  module Models
    PricingTier = Pricing::PricingTier

    module Pricing
      class PricingTier < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Pricing::PricingTier, Telnyx::Internal::AnyHash)
          end

        # Upper bound of the tier (exclusive). Null means no upper limit.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max

        # Lower bound of the tier (inclusive).
        sig { returns(Integer) }
        attr_accessor :min

        # Rate for this tier. Numeric for standard products, string for inference
        # products.
        sig { returns(Telnyx::Pricing::PricingTier::Rate::Variants) }
        attr_accessor :rate

        sig do
          params(
            max: T.nilable(Integer),
            min: Integer,
            rate: Telnyx::Pricing::PricingTier::Rate::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Upper bound of the tier (exclusive). Null means no upper limit.
          max:,
          # Lower bound of the tier (inclusive).
          min:,
          # Rate for this tier. Numeric for standard products, string for inference
          # products.
          rate:
        )
        end

        sig do
          override.returns(
            {
              max: T.nilable(Integer),
              min: Integer,
              rate: Telnyx::Pricing::PricingTier::Rate::Variants
            }
          )
        end
        def to_hash
        end

        # Rate for this tier. Numeric for standard products, string for inference
        # products.
        module Rate
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(Float, String) }

          sig do
            override.returns(
              T::Array[Telnyx::Pricing::PricingTier::Rate::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
