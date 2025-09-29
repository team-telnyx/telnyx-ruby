# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::UserBundles#create
      class UserBundleCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute idempotency_key
        #   Idempotency key for the request. Can be any UUID, but should always be unique
        #   for each request.
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute items
        #
        #   @return [Array<Telnyx::Models::BundlePricing::UserBundleCreateParams::Item>, nil]
        optional :items,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BundlePricing::UserBundleCreateParams::Item] }

        # @!attribute authorization_bearer
        #   Authenticates the request with your Telnyx API V2 KEY
        #
        #   @return [String, nil]
        optional :authorization_bearer, String

        # @!method initialize(idempotency_key: nil, items: nil, authorization_bearer: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BundlePricing::UserBundleCreateParams} for more details.
        #
        #   @param idempotency_key [String] Idempotency key for the request. Can be any UUID, but should always be unique fo
        #
        #   @param items [Array<Telnyx::Models::BundlePricing::UserBundleCreateParams::Item>]
        #
        #   @param authorization_bearer [String] Authenticates the request with your Telnyx API V2 KEY
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Item < Telnyx::Internal::Type::BaseModel
          # @!attribute billing_bundle_id
          #   Quantity of user bundles to order.
          #
          #   @return [String]
          required :billing_bundle_id, String

          # @!attribute quantity
          #   Quantity of user bundles to order.
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!method initialize(billing_bundle_id:, quantity:)
          #   @param billing_bundle_id [String] Quantity of user bundles to order.
          #
          #   @param quantity [Integer] Quantity of user bundles to order.
        end
      end
    end
  end
end
