# frozen_string_literal: true

module Telnyx
  module Models
    module Pricing
      # @see Telnyx::Resources::Pricing::Products#retrieve
      class ProductRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute cached_input_rate
        #   Cached input token rate. Present only on inference product entries.
        #
        #   @return [String, nil]
        optional :cached_input_rate, String

        # @!attribute cached_input_tiers
        #   Cached input token tiered pricing. Present only on inference product entries.
        #
        #   @return [Array<Telnyx::Models::Pricing::PricingTier>, nil]
        optional :cached_input_tiers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier] }

        # @!attribute country_iso
        #   ISO country code. Null for non-geographic products.
        #
        #   @return [String, nil]
        optional :country_iso, String, nil?: true

        # @!attribute currency
        #   ISO currency code (e.g., USD).
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute direction
        #   Direction (e.g., termination). Null for non-directional products.
        #
        #   @return [String, nil]
        optional :direction, String, nil?: true

        # @!attribute input_rate
        #   Input token rate. Present only on inference product entries.
        #
        #   @return [String, nil]
        optional :input_rate, String

        # @!attribute input_tiers
        #   Input token tiered pricing. Present only on inference product entries.
        #
        #   @return [Array<Telnyx::Models::Pricing::PricingTier>, nil]
        optional :input_tiers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier] }

        # @!attribute model
        #   Model identifier. Present only on inference product entries.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute name
        #   Human-readable name describing the pricing entry.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute note
        #   Additional note for rate-deck products (e.g., "Pricing is determined by the
        #   WhatsApp rate deck.").
        #
        #   @return [String, nil]
        optional :note, String, nil?: true

        # @!attribute output_rate
        #   Output token rate. Present only on inference product entries.
        #
        #   @return [String, nil]
        optional :output_rate, String

        # @!attribute output_tiers
        #   Output token tiered pricing. Present only on inference product entries.
        #
        #   @return [Array<Telnyx::Models::Pricing::PricingTier>, nil]
        optional :output_tiers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier] }

        # @!attribute pricing_type
        #   Pricing type for non-standard products (e.g., rate_deck). Absent on standard
        #   products.
        #
        #   @return [String, nil]
        optional :pricing_type, String, nil?: true

        # @!attribute rate
        #   Per-unit rate. Numeric for standard products, string for inference products.
        #   Null for rate-deck products.
        #
        #   @return [Float, String, nil]
        optional :rate, union: -> { Telnyx::Models::Pricing::ProductRetrieveResponse::Rate }, nil?: true

        # @!attribute tiers
        #   Volume-based tiered pricing. Empty for rate-deck products.
        #
        #   @return [Array<Telnyx::Models::Pricing::PricingTier>, nil]
        optional :tiers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Pricing::PricingTier] }

        # @!attribute type
        #   Pricing type (e.g., usage).
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute unit
        #   Unit of measurement (e.g., part, message, GB, per_1k_tokens).
        #
        #   @return [String, nil]
        optional :unit, String

        # @!method initialize(cached_input_rate: nil, cached_input_tiers: nil, country_iso: nil, currency: nil, direction: nil, input_rate: nil, input_tiers: nil, model: nil, name: nil, note: nil, output_rate: nil, output_tiers: nil, pricing_type: nil, rate: nil, tiers: nil, type: nil, unit: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Pricing::ProductRetrieveResponse} for more details.
        #
        #   A single pricing entry. Standard products include rate, unit, currency, type,
        #   country_iso, direction, and tiers. Inference products include model, input_rate,
        #   output_rate, cached_input_rate, and their respective tier arrays. Rate-deck
        #   products include pricing_type and note fields with null rate and empty tiers.
        #
        #   @param cached_input_rate [String] Cached input token rate. Present only on inference product entries.
        #
        #   @param cached_input_tiers [Array<Telnyx::Models::Pricing::PricingTier>] Cached input token tiered pricing. Present only on inference product entries.
        #
        #   @param country_iso [String, nil] ISO country code. Null for non-geographic products.
        #
        #   @param currency [String] ISO currency code (e.g., USD).
        #
        #   @param direction [String, nil] Direction (e.g., termination). Null for non-directional products.
        #
        #   @param input_rate [String] Input token rate. Present only on inference product entries.
        #
        #   @param input_tiers [Array<Telnyx::Models::Pricing::PricingTier>] Input token tiered pricing. Present only on inference product entries.
        #
        #   @param model [String] Model identifier. Present only on inference product entries.
        #
        #   @param name [String] Human-readable name describing the pricing entry.
        #
        #   @param note [String, nil] Additional note for rate-deck products (e.g., "Pricing is determined by the What
        #
        #   @param output_rate [String] Output token rate. Present only on inference product entries.
        #
        #   @param output_tiers [Array<Telnyx::Models::Pricing::PricingTier>] Output token tiered pricing. Present only on inference product entries.
        #
        #   @param pricing_type [String, nil] Pricing type for non-standard products (e.g., rate_deck). Absent on standard pro
        #
        #   @param rate [Float, String, nil] Per-unit rate. Numeric for standard products, string for inference products. Nul
        #
        #   @param tiers [Array<Telnyx::Models::Pricing::PricingTier>] Volume-based tiered pricing. Empty for rate-deck products.
        #
        #   @param type [String] Pricing type (e.g., usage).
        #
        #   @param unit [String] Unit of measurement (e.g., part, message, GB, per_1k_tokens).

        # Per-unit rate. Numeric for standard products, string for inference products.
        # Null for rate-deck products.
        #
        # @see Telnyx::Models::Pricing::ProductRetrieveResponse#rate
        module Rate
          extend Telnyx::Internal::Type::Union

          # Rate for standard products (e.g., 0.004).
          variant Float

          # Rate for inference products (e.g., "0.001").
          variant String

          # @!method self.variants
          #   @return [Array(Float, String)]
        end
      end
    end
  end
end
