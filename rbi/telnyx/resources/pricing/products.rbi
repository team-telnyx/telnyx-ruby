# typed: strong

module Telnyx
  module Resources
    class Pricing
      # Public pricing operations
      class Products
        # Returns pricing entries for a single product. Most products return standard rate
        # entries with fields like rate, unit, country_iso, direction, and tiers.
        # Inference products return model-specific fields (model, input_rate, output_rate,
        # cached_input_rate) with tiered pricing. Some products use rate decks
        # (pricing_type: rate_deck) where rates are determined dynamically.
        sig do
          params(
            slug: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Pricing::ProductRetrieveResponse)
        end
        def retrieve(
          # Product slug from the catalog listing.
          slug,
          # Page number (1-based).
          page_number: nil,
          # Number of items per page (max 100).
          page_size: nil,
          request_options: {}
        )
        end

        # Returns the full product catalog with pagination. Each entry contains a slug,
        # display name, and description. Use the slug to fetch per-product pricing via GET
        # /pricing/products/{slug}.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders[
              Telnyx::Models::Pricing::ProductListResponse
            ]
          )
        end
        def list(
          # Page number (1-based).
          page_number: nil,
          # Number of items per page (max 100).
          page_size: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
