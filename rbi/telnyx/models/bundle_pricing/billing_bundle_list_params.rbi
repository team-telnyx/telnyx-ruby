# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class BillingBundleListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::BillingBundleListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Supports filtering by
        # country_iso and resource. Examples: filter[country_iso]=US or
        # filter[resource]=+15617819942
        sig do
          returns(
            T.nilable(Telnyx::BundlePricing::BillingBundleListParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::BundlePricing::BillingBundleListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::BundlePricing::BillingBundleListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page: Telnyx::BundlePricing::BillingBundleListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Authenticates the request with your Telnyx API V2 KEY
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_bearer

        sig { params(authorization_bearer: String).void }
        attr_writer :authorization_bearer

        sig do
          params(
            filter:
              Telnyx::BundlePricing::BillingBundleListParams::Filter::OrHash,
            page: Telnyx::BundlePricing::BillingBundleListParams::Page::OrHash,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Supports filtering by
          # country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::BundlePricing::BillingBundleListParams::Filter,
              page: Telnyx::BundlePricing::BillingBundleListParams::Page,
              authorization_bearer: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::BundlePricing::BillingBundleListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by country code.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :country_iso

          sig { params(country_iso: T::Array[String]).void }
          attr_writer :country_iso

          # Filter by resource.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :resource

          sig { params(resource: T::Array[String]).void }
          attr_writer :resource

          # Consolidated filter parameter (deepObject style). Supports filtering by
          # country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          sig do
            params(
              country_iso: T::Array[String],
              resource: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by country code.
            country_iso: nil,
            # Filter by resource.
            resource: nil
          )
          end

          sig do
            override.returns(
              { country_iso: T::Array[String], resource: T::Array[String] }
            )
          end
          def to_hash
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::BundlePricing::BillingBundleListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load.
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load.
            number: nil,
            # The size of the page.
            size: nil
          )
          end

          sig { override.returns({ number: Integer, size: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
