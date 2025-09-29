# typed: strong

module Telnyx
  module Resources
    class BundlePricing
      class BillingBundles
        # Get a single bundle by ID.
        sig do
          params(
            bundle_id: String,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse
          )
        end
        def retrieve(
          # Billing bundle's ID, this is used to identify the billing bundle in the API.
          bundle_id,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        # Get all allowed bundles.
        sig do
          params(
            filter:
              Telnyx::BundlePricing::BillingBundleListParams::Filter::OrHash,
            page: Telnyx::BundlePricing::BillingBundleListParams::Page::OrHash,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::BundlePricing::BillingBundleListResponse)
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

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
