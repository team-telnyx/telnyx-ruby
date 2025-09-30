# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      # @see Telnyx::Resources::BundlePricing::BillingBundles#retrieve
      class BillingBundleRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data]

        # @see Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Bundle's ID, this is used to identify the bundle in the API.
          #
          #   @return [String]
          required :id, String

          # @!attribute active
          #   If that bundle is active or not.
          #
          #   @return [Boolean]
          required :active, Telnyx::Internal::Type::Boolean

          # @!attribute bundle_limits
          #
          #   @return [Array<Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit>]
          required :bundle_limits,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit] }

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

          # @!attribute slug
          #   Slugified version of the bundle's name.
          #
          #   @return [String, nil]
          optional :slug, String

          # @!method initialize(id:, active:, bundle_limits:, cost_code:, created_at:, is_public:, name:, slug: nil)
          #   @param id [String] Bundle's ID, this is used to identify the bundle in the API.
          #
          #   @param active [Boolean] If that bundle is active or not.
          #
          #   @param bundle_limits [Array<Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit>]
          #
          #   @param cost_code [String] Bundle's cost code, this is used to identify the bundle in the billing system.
          #
          #   @param created_at [Date] Date the bundle was created.
          #
          #   @param is_public [Boolean] Available to all customers or only to specific customers.
          #
          #   @param name [String] Bundle's name, this is used to identify the bundle in the UI.
          #
          #   @param slug [String] Slugified version of the bundle's name.

          class BundleLimit < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Date]
            required :created_at, Date

            # @!attribute metric
            #
            #   @return [String]
            required :metric, String

            # @!attribute service
            #
            #   @return [String]
            required :service, String

            # @!attribute updated_at
            #
            #   @return [Date]
            required :updated_at, Date

            # @!attribute billing_service
            #
            #   @return [String, nil]
            optional :billing_service, String

            # @!attribute country
            #   @deprecated
            #
            #   Use country_iso instead
            #
            #   @return [String, nil]
            optional :country, String

            # @!attribute country_code
            #
            #   @return [Integer, nil]
            optional :country_code, Integer

            # @!attribute country_iso
            #
            #   @return [String, nil]
            optional :country_iso, String

            # @!attribute direction
            #   An enumeration.
            #
            #   @return [Symbol, Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction, nil]
            optional :direction,
                     enum: -> { Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction }

            # @!attribute limit
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!attribute rate
            #
            #   @return [String, nil]
            optional :rate, String

            # @!attribute types
            #
            #   @return [Array<String>, nil]
            optional :types, Telnyx::Internal::Type::ArrayOf[String]

            # @!method initialize(id:, created_at:, metric:, service:, updated_at:, billing_service: nil, country: nil, country_code: nil, country_iso: nil, direction: nil, limit: nil, rate: nil, types: nil)
            #   @param id [String]
            #
            #   @param created_at [Date]
            #
            #   @param metric [String]
            #
            #   @param service [String]
            #
            #   @param updated_at [Date]
            #
            #   @param billing_service [String]
            #
            #   @param country [String] Use country_iso instead
            #
            #   @param country_code [Integer]
            #
            #   @param country_iso [String]
            #
            #   @param direction [Symbol, Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit::Direction] An enumeration.
            #
            #   @param limit [Integer]
            #
            #   @param rate [String]
            #
            #   @param types [Array<String>]

            # An enumeration.
            #
            # @see Telnyx::Models::BundlePricing::BillingBundleRetrieveResponse::Data::BundleLimit#direction
            module Direction
              extend Telnyx::Internal::Type::Enum

              INBOUND = :inbound
              OUTBOUND = :outbound

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
