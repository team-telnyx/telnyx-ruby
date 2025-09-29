# frozen_string_literal: true

module Telnyx
  module Resources
    class BundlePricing
      class BillingBundles
        # Get a single bundle by ID.
        #
        # @overload retrieve(bundle_id, authorization_bearer: nil, request_options: {})
        #
        # @param bundle_id [String] Billing bundle's ID, this is used to identify the billing bundle in the API.
        #
        # @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse]
        #
        # @see Telnyx::Models::BundlePricing::BillingBundleRetrieveParams
        def retrieve(bundle_id, params = {})
          parsed, options = Telnyx::BundlePricing::BillingBundleRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["bundle_pricing/billing_bundles/%1$s", bundle_id],
            headers: parsed,
            model: Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::BundlePricing::BillingBundleListParams} for more details.
        #
        # Get all allowed bundles.
        #
        # @overload list(filter: nil, page: nil, authorization_bearer: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::BundlePricing::BillingBundleListParams::Filter] Query param: Consolidated filter parameter (deepObject style). Supports filterin
        #
        # @param page [Telnyx::Models::BundlePricing::BillingBundleListParams::Page] Query param: Consolidated page parameter (deepObject style). Originally: page[si
        #
        # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::BillingBundleListResponse]
        #
        # @see Telnyx::Models::BundlePricing::BillingBundleListParams
        def list(params = {})
          parsed, options = Telnyx::BundlePricing::BillingBundleListParams.dump_request(params)
          query_params = [:filter, :page]
          @client.request(
            method: :get,
            path: "bundle_pricing/billing_bundles",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params),
            model: Telnyx::Models::BundlePricing::BillingBundleListResponse,
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
