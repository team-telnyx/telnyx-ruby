# frozen_string_literal: true

module Telnyx
  module Resources
    class BundlePricing
      class UserBundles
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::BundlePricing::UserBundleCreateParams} for more details.
        #
        # Creates multiple user bundles for the user.
        #
        # @overload create(idempotency_key: nil, items: nil, authorization_bearer: nil, request_options: {})
        #
        # @param idempotency_key [String] Body param: Idempotency key for the request. Can be any UUID, but should always
        #
        # @param items [Array<Telnyx::Models::BundlePricing::UserBundleCreateParams::Item>] Body param:
        #
        # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleCreateResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleCreateParams
        def create(params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleCreateParams.dump_request(params)
          header_params = {authorization_bearer: "authorization_bearer"}
          @client.request(
            method: :post,
            path: "bundle_pricing/user_bundles/bulk",
            headers: parsed.slice(*header_params.keys),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Models::BundlePricing::UserBundleCreateResponse,
            options: options
          )
        end

        # Retrieves a user bundle by its ID.
        #
        # @overload retrieve(user_bundle_id, authorization_bearer: nil, request_options: {})
        #
        # @param user_bundle_id [String] User bundle's ID, this is used to identify the user bundle in the API.
        #
        # @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleRetrieveResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleRetrieveParams
        def retrieve(user_bundle_id, params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["bundle_pricing/user_bundles/%1$s", user_bundle_id],
            headers: parsed,
            model: Telnyx::Models::BundlePricing::UserBundleRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::BundlePricing::UserBundleListParams} for more details.
        #
        # Get a paginated list of user bundles.
        #
        # @overload list(filter: nil, page: nil, authorization_bearer: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::BundlePricing::UserBundleListParams::Filter] Query param: Consolidated filter parameter (deepObject style). Supports filterin
        #
        # @param page [Telnyx::Models::BundlePricing::UserBundleListParams::Page] Query param: Consolidated page parameter (deepObject style). Originally: page[si
        #
        # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleListResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleListParams
        def list(params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleListParams.dump_request(params)
          query_params = [:filter, :page]
          @client.request(
            method: :get,
            path: "bundle_pricing/user_bundles",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params),
            model: Telnyx::Models::BundlePricing::UserBundleListResponse,
            options: options
          )
        end

        # Deactivates a user bundle by its ID.
        #
        # @overload deactivate(user_bundle_id, authorization_bearer: nil, request_options: {})
        #
        # @param user_bundle_id [String] User bundle's ID, this is used to identify the user bundle in the API.
        #
        # @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleDeactivateResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleDeactivateParams
        def deactivate(user_bundle_id, params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleDeactivateParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["bundle_pricing/user_bundles/%1$s", user_bundle_id],
            headers: parsed,
            model: Telnyx::Models::BundlePricing::UserBundleDeactivateResponse,
            options: options
          )
        end

        # Retrieves the resources of a user bundle by its ID.
        #
        # @overload list_resources(user_bundle_id, authorization_bearer: nil, request_options: {})
        #
        # @param user_bundle_id [String] User bundle's ID, this is used to identify the user bundle in the API.
        #
        # @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleListResourcesResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleListResourcesParams
        def list_resources(user_bundle_id, params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleListResourcesParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["bundle_pricing/user_bundles/%1$s/resources", user_bundle_id],
            headers: parsed,
            model: Telnyx::Models::BundlePricing::UserBundleListResourcesResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::BundlePricing::UserBundleListUnusedParams} for more details.
        #
        # Returns all user bundles that aren't in use.
        #
        # @overload list_unused(filter: nil, authorization_bearer: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::BundlePricing::UserBundleListUnusedParams::Filter] Query param: Consolidated filter parameter (deepObject style). Supports filterin
        #
        # @param authorization_bearer [String] Header param: Authenticates the request with your Telnyx API V2 KEY
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BundlePricing::UserBundleListUnusedResponse]
        #
        # @see Telnyx::Models::BundlePricing::UserBundleListUnusedParams
        def list_unused(params = {})
          parsed, options = Telnyx::BundlePricing::UserBundleListUnusedParams.dump_request(params)
          query_params = [:filter]
          @client.request(
            method: :get,
            path: "bundle_pricing/user_bundles/unused",
            query: parsed.slice(*query_params),
            headers: parsed.except(*query_params),
            model: Telnyx::Models::BundlePricing::UserBundleListUnusedResponse,
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
