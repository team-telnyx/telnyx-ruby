# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::BillingBundles#retrieve
      class BillingBundleRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute bundle_id
        #   Billing bundle's ID, this is used to identify the billing bundle in the API.
        #
        #   @return [String]
        required :bundle_id, String

        # @!attribute authorization_bearer
        #   Authenticates the request with your Telnyx API V2 KEY
        #
        #   @return [String, nil]
        optional :authorization_bearer, String

        # @!method initialize(bundle_id:, authorization_bearer: nil, request_options: {})
        #   @param bundle_id [String] Billing bundle's ID, this is used to identify the billing bundle in the API.
        #
        #   @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
