# typed: strong

module Telnyx
  module Resources
    class BundlePricing
      class UserBundles
        # Creates multiple user bundles for the user.
        sig do
          params(
            idempotency_key: String,
            items:
              T::Array[
                Telnyx::BundlePricing::UserBundleCreateParams::Item::OrHash
              ],
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BundlePricing::UserBundleCreateResponse)
        end
        def create(
          # Body param: Idempotency key for the request. Can be any UUID, but should always
          # be unique for each request.
          idempotency_key: nil,
          # Body param:
          items: nil,
          # Header param: Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Retrieves a user bundle by its ID.
        sig do
          params(
            user_bundle_id: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BundlePricing::UserBundleRetrieveResponse)
        end
        def retrieve(
          # User bundle's ID, this is used to identify the user bundle in the API.
          user_bundle_id,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Get a paginated list of user bundles.
        sig do
          params(
            filter: Telnyx::BundlePricing::UserBundleListParams::Filter::OrHash,
            page: Telnyx::BundlePricing::UserBundleListParams::Page::OrHash,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultPagination[
              Telnyx::BundlePricing::UserBundle
            ]
          )
        end
        def list(
          # Query param: Consolidated filter parameter (deepObject style). Supports
          # filtering by country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          filter: nil,
          # Query param: Consolidated page parameter (deepObject style). Originally:
          # page[size], page[number]
          page: nil,
          # Header param: Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Deactivates a user bundle by its ID.
        sig do
          params(
            user_bundle_id: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BundlePricing::UserBundleDeactivateResponse)
        end
        def deactivate(
          # User bundle's ID, this is used to identify the user bundle in the API.
          user_bundle_id,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Retrieves the resources of a user bundle by its ID.
        sig do
          params(
            user_bundle_id: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::BundlePricing::UserBundleListResourcesResponse
          )
        end
        def list_resources(
          # User bundle's ID, this is used to identify the user bundle in the API.
          user_bundle_id,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Returns all user bundles that aren't in use.
        sig do
          params(
            filter:
              Telnyx::BundlePricing::UserBundleListUnusedParams::Filter::OrHash,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BundlePricing::UserBundleListUnusedResponse)
        end
        def list_unused(
          # Query param: Consolidated filter parameter (deepObject style). Supports
          # filtering by country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          filter: nil,
          # Header param: Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
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
