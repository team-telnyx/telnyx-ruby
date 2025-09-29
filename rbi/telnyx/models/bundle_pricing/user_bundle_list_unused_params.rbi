# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleListUnusedParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::UserBundleListUnusedParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Supports filtering by
        # country_iso and resource. Examples: filter[country_iso]=US or
        # filter[resource]=+15617819942
        sig do
          returns(
            T.nilable(Telnyx::BundlePricing::UserBundleListUnusedParams::Filter)
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::BundlePricing::UserBundleListUnusedParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Authenticates the request with your Telnyx API V2 KEY
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_bearer

        sig { params(authorization_bearer: String).void }
        attr_writer :authorization_bearer

        sig do
          params(
            filter:
              Telnyx::BundlePricing::UserBundleListUnusedParams::Filter::OrHash,
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Supports filtering by
          # country_iso and resource. Examples: filter[country_iso]=US or
          # filter[resource]=+15617819942
          filter: nil,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::BundlePricing::UserBundleListUnusedParams::Filter,
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
                Telnyx::BundlePricing::UserBundleListUnusedParams::Filter,
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
      end
    end
  end
end
