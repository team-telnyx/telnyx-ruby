# frozen_string_literal: true

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
        #
        # @overload retrieve(slug, page_number: nil, page_size: nil, request_options: {})
        #
        # @param slug [String] Product slug from the catalog listing.
        #
        # @param page_number [Integer] Page number (1-based).
        #
        # @param page_size [Integer] Number of items per page (max 100).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Pricing::ProductRetrieveResponse]
        #
        # @see Telnyx::Models::Pricing::ProductRetrieveParams
        def retrieve(slug, params = {})
          parsed, options = Telnyx::Pricing::ProductRetrieveParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["pricing/products/%1$s", slug],
            query: query,
            model: Telnyx::Models::Pricing::ProductRetrieveResponse,
            options: options
          )
        end

        # Returns the full product catalog with pagination. Each entry contains a slug,
        # display name, and description. Use the slug to fetch per-product pricing via GET
        # /pricing/products/{slug}.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer] Page number (1-based).
        #
        # @param page_size [Integer] Number of items per page (max 100).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders<Telnyx::Models::Pricing::ProductListResponse>]
        #
        # @see Telnyx::Models::Pricing::ProductListParams
        def list(params = {})
          parsed, options = Telnyx::Pricing::ProductListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "pricing/products",
            query: query,
            page: Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders,
            model: Telnyx::Models::Pricing::ProductListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
