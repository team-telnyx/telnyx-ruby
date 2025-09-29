# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::UserBundleCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Idempotency key for the request. Can be any UUID, but should always be unique
        # for each request.
        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::BundlePricing::UserBundleCreateParams::Item]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Telnyx::BundlePricing::UserBundleCreateParams::Item::OrHash
              ]
          ).void
        end
        attr_writer :items

        # Authenticates the request with your Telnyx API V2 KEY
        sig { returns(T.nilable(String)) }
        attr_reader :authorization_bearer

        sig { params(authorization_bearer: String).void }
        attr_writer :authorization_bearer

        sig do
          params(
            idempotency_key: String,
            items:
              T::Array[
                Telnyx::BundlePricing::UserBundleCreateParams::Item::OrHash
              ],
            authorization_bearer: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Idempotency key for the request. Can be any UUID, but should always be unique
          # for each request.
          idempotency_key: nil,
          items: nil,
          # Authenticates the request with your Telnyx API V2 KEY
          authorization_bearer: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              idempotency_key: String,
              items:
                T::Array[Telnyx::BundlePricing::UserBundleCreateParams::Item],
              authorization_bearer: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Item < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::BundlePricing::UserBundleCreateParams::Item,
                Telnyx::Internal::AnyHash
              )
            end

          # Quantity of user bundles to order.
          sig { returns(String) }
          attr_accessor :billing_bundle_id

          # Quantity of user bundles to order.
          sig { returns(Integer) }
          attr_accessor :quantity

          sig do
            params(billing_bundle_id: String, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Quantity of user bundles to order.
            billing_bundle_id:,
            # Quantity of user bundles to order.
            quantity:
          )
          end

          sig do
            override.returns({ billing_bundle_id: String, quantity: Integer })
          end
          def to_hash
          end
        end
      end
    end
  end
end
