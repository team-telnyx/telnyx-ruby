# typed: strong

module Telnyx
  module Models
    module Pricing
      class ProductRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Pricing::ProductRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[Telnyx::Models::Pricing::ProductRetrieveResponse::Data]
          )
        end
        attr_accessor :data

        sig { returns(Telnyx::Pricing::PricingPaginationMeta) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::Pricing::PricingPaginationMeta::OrHash).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::Pricing::ProductRetrieveResponse::Data::OrHash
              ],
            meta: Telnyx::Pricing::PricingPaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::Pricing::ProductRetrieveResponse::Data
                ],
              meta: Telnyx::Pricing::PricingPaginationMeta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Pricing::ProductRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Cached input token rate. Present only on inference product entries.
          sig { returns(T.nilable(String)) }
          attr_reader :cached_input_rate

          sig { params(cached_input_rate: String).void }
          attr_writer :cached_input_rate

          # Cached input token tiered pricing. Present only on inference product entries.
          sig { returns(T.nilable(T::Array[Telnyx::Pricing::PricingTier])) }
          attr_reader :cached_input_tiers

          sig do
            params(
              cached_input_tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash]
            ).void
          end
          attr_writer :cached_input_tiers

          # ISO country code. Null for non-geographic products.
          sig { returns(T.nilable(String)) }
          attr_accessor :country_iso

          # ISO currency code (e.g., USD).
          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          # Direction (e.g., termination). Null for non-directional products.
          sig { returns(T.nilable(String)) }
          attr_accessor :direction

          # Input token rate. Present only on inference product entries.
          sig { returns(T.nilable(String)) }
          attr_reader :input_rate

          sig { params(input_rate: String).void }
          attr_writer :input_rate

          # Input token tiered pricing. Present only on inference product entries.
          sig { returns(T.nilable(T::Array[Telnyx::Pricing::PricingTier])) }
          attr_reader :input_tiers

          sig do
            params(
              input_tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash]
            ).void
          end
          attr_writer :input_tiers

          # Model identifier. Present only on inference product entries.
          sig { returns(T.nilable(String)) }
          attr_reader :model

          sig { params(model: String).void }
          attr_writer :model

          # Human-readable name describing the pricing entry.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Additional note for rate-deck products (e.g., "Pricing is determined by the
          # WhatsApp rate deck.").
          sig { returns(T.nilable(String)) }
          attr_accessor :note

          # Output token rate. Present only on inference product entries.
          sig { returns(T.nilable(String)) }
          attr_reader :output_rate

          sig { params(output_rate: String).void }
          attr_writer :output_rate

          # Output token tiered pricing. Present only on inference product entries.
          sig { returns(T.nilable(T::Array[Telnyx::Pricing::PricingTier])) }
          attr_reader :output_tiers

          sig do
            params(
              output_tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash]
            ).void
          end
          attr_writer :output_tiers

          # Pricing type for non-standard products (e.g., rate_deck). Absent on standard
          # products.
          sig { returns(T.nilable(String)) }
          attr_accessor :pricing_type

          # Per-unit rate. Numeric for standard products, string for inference products.
          # Null for rate-deck products.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Pricing::ProductRetrieveResponse::Data::Rate::Variants
              )
            )
          end
          attr_accessor :rate

          # Volume-based tiered pricing. Empty for rate-deck products.
          sig { returns(T.nilable(T::Array[Telnyx::Pricing::PricingTier])) }
          attr_reader :tiers

          sig do
            params(tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash]).void
          end
          attr_writer :tiers

          # Pricing type (e.g., usage).
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # Unit of measurement (e.g., part, message, GB, per_1k_tokens).
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          # A single pricing entry. Standard products include rate, unit, currency, type,
          # country_iso, direction, and tiers. Inference products include model, input_rate,
          # output_rate, cached_input_rate, and their respective tier arrays. Rate-deck
          # products include pricing_type and note fields with null rate and empty tiers.
          sig do
            params(
              cached_input_rate: String,
              cached_input_tiers:
                T::Array[Telnyx::Pricing::PricingTier::OrHash],
              country_iso: T.nilable(String),
              currency: String,
              direction: T.nilable(String),
              input_rate: String,
              input_tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash],
              model: String,
              name: String,
              note: T.nilable(String),
              output_rate: String,
              output_tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash],
              pricing_type: T.nilable(String),
              rate:
                T.nilable(
                  Telnyx::Models::Pricing::ProductRetrieveResponse::Data::Rate::Variants
                ),
              tiers: T::Array[Telnyx::Pricing::PricingTier::OrHash],
              type: String,
              unit: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Cached input token rate. Present only on inference product entries.
            cached_input_rate: nil,
            # Cached input token tiered pricing. Present only on inference product entries.
            cached_input_tiers: nil,
            # ISO country code. Null for non-geographic products.
            country_iso: nil,
            # ISO currency code (e.g., USD).
            currency: nil,
            # Direction (e.g., termination). Null for non-directional products.
            direction: nil,
            # Input token rate. Present only on inference product entries.
            input_rate: nil,
            # Input token tiered pricing. Present only on inference product entries.
            input_tiers: nil,
            # Model identifier. Present only on inference product entries.
            model: nil,
            # Human-readable name describing the pricing entry.
            name: nil,
            # Additional note for rate-deck products (e.g., "Pricing is determined by the
            # WhatsApp rate deck.").
            note: nil,
            # Output token rate. Present only on inference product entries.
            output_rate: nil,
            # Output token tiered pricing. Present only on inference product entries.
            output_tiers: nil,
            # Pricing type for non-standard products (e.g., rate_deck). Absent on standard
            # products.
            pricing_type: nil,
            # Per-unit rate. Numeric for standard products, string for inference products.
            # Null for rate-deck products.
            rate: nil,
            # Volume-based tiered pricing. Empty for rate-deck products.
            tiers: nil,
            # Pricing type (e.g., usage).
            type: nil,
            # Unit of measurement (e.g., part, message, GB, per_1k_tokens).
            unit: nil
          )
          end

          sig do
            override.returns(
              {
                cached_input_rate: String,
                cached_input_tiers: T::Array[Telnyx::Pricing::PricingTier],
                country_iso: T.nilable(String),
                currency: String,
                direction: T.nilable(String),
                input_rate: String,
                input_tiers: T::Array[Telnyx::Pricing::PricingTier],
                model: String,
                name: String,
                note: T.nilable(String),
                output_rate: String,
                output_tiers: T::Array[Telnyx::Pricing::PricingTier],
                pricing_type: T.nilable(String),
                rate:
                  T.nilable(
                    Telnyx::Models::Pricing::ProductRetrieveResponse::Data::Rate::Variants
                  ),
                tiers: T::Array[Telnyx::Pricing::PricingTier],
                type: String,
                unit: String
              }
            )
          end
          def to_hash
          end

          # Per-unit rate. Numeric for standard products, string for inference products.
          # Null for rate-deck products.
          module Rate
            extend Telnyx::Internal::Type::Union

            Variants = T.type_alias { T.any(Float, String) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Pricing::ProductRetrieveResponse::Data::Rate::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
