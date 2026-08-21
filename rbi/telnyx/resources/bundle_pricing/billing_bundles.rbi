# typed: strong

module Telnyx
  module Resources
    class BundlePricing
      class BillingBundles
        # Returns the details of a single billing bundle by its ID, so you can inspect its
        # contents before purchasing a user bundle.
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

        # Returns a paginated list of the billing bundles available to your account, with
        # support for filtering.
        sig do
          params(
            filter:
              Telnyx::BundlePricing::BillingBundleListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::BundlePricing::BillingBundleSummary
            ]
          )
        end
        def list(
          # Query param: Consolidated filter parameter (deepObject style). Supports
          # filtering by country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          filter: nil,
          # Query param
          page_number: nil,
          # Query param
          page_size: nil,
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
