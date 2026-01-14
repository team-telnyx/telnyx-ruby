# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::BillingBundles#list
      class BillingBundleListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Supports filtering by
        #   country_iso and resource. Examples: filter[country_iso]=US or
        #   filter[resource]=+15617819942
        #
        #   @return [Telnyx::Models::BundlePricing::BillingBundleListParams::Filter, nil]
        optional :filter, -> { Telnyx::BundlePricing::BillingBundleListParams::Filter }

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute authorization_bearer
        #   Authenticates the request with your Telnyx API V2 KEY
        #
        #   @return [String, nil]
        optional :authorization_bearer, String

        # @!method initialize(filter: nil, page_number: nil, page_size: nil, authorization_bearer: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BundlePricing::BillingBundleListParams} for more details.
        #
        #   @param filter [Telnyx::Models::BundlePricing::BillingBundleListParams::Filter] Consolidated filter parameter (deepObject style). Supports filtering by
        #   country\_
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute country_iso
          #   Filter by country code.
          #
          #   @return [Array<String>, nil]
          optional :country_iso, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute resource
          #   Filter by resource.
          #
          #   @return [Array<String>, nil]
          optional :resource, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(country_iso: nil, resource: nil)
          #   Consolidated filter parameter (deepObject style). Supports filtering by
          #   country_iso and resource. Examples: filter[country_iso]=US or
          #   filter[resource]=+15617819942
          #
          #   @param country_iso [Array<String>] Filter by country code.
          #
          #   @param resource [Array<String>] Filter by resource.
        end
      end
    end
  end
end
