# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::BillingBundles#list
      class BillingBundleSummary < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Bundle's ID, this is used to identify the bundle in the API.
        #
        #   @return [String]
        required :id, String

        # @!attribute cost_code
        #   Bundle's cost code, this is used to identify the bundle in the billing system.
        #
        #   @return [String]
        required :cost_code, String

        # @!attribute created_at
        #   Date the bundle was created.
        #
        #   @return [Date]
        required :created_at, Date

        # @!attribute is_public
        #   Available to all customers or only to specific customers.
        #
        #   @return [Boolean]
        required :is_public, Telnyx::Internal::Type::Boolean

        # @!attribute name
        #   Bundle's name, this is used to identify the bundle in the UI.
        #
        #   @return [String]
        required :name, String

        # @!attribute currency
        #   Bundle's currency code.
        #
        #   @return [String, nil]
        optional :currency, String

        # @!attribute mrc_price
        #   Monthly recurring charge price.
        #
        #   @return [Float, nil]
        optional :mrc_price, Float

        # @!attribute slug
        #   Slugified version of the bundle's name.
        #
        #   @return [String, nil]
        optional :slug, String

        # @!attribute specs
        #
        #   @return [Array<String>, nil]
        optional :specs, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, cost_code:, created_at:, is_public:, name:, currency: nil, mrc_price: nil, slug: nil, specs: nil)
        #   @param id [String] Bundle's ID, this is used to identify the bundle in the API.
        #
        #   @param cost_code [String] Bundle's cost code, this is used to identify the bundle in the billing system.
        #
        #   @param created_at [Date] Date the bundle was created.
        #
        #   @param is_public [Boolean] Available to all customers or only to specific customers.
        #
        #   @param name [String] Bundle's name, this is used to identify the bundle in the UI.
        #
        #   @param currency [String] Bundle's currency code.
        #
        #   @param mrc_price [Float] Monthly recurring charge price.
        #
        #   @param slug [String] Slugified version of the bundle's name.
        #
        #   @param specs [Array<String>]
      end
    end
  end
end
