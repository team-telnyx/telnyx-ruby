# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleListUnusedResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::UserBundleListUnusedResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::BundlePricing::UserBundleListUnusedResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::BundlePricing::BillingBundleSummary) }
          attr_reader :billing_bundle

          sig do
            params(
              billing_bundle:
                Telnyx::BundlePricing::BillingBundleSummary::OrHash
            ).void
          end
          attr_writer :billing_bundle

          # List of user bundle IDs for given bundle.
          sig { returns(T::Array[String]) }
          attr_accessor :user_bundle_ids

          sig do
            params(
              billing_bundle:
                Telnyx::BundlePricing::BillingBundleSummary::OrHash,
              user_bundle_ids: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            billing_bundle:,
            # List of user bundle IDs for given bundle.
            user_bundle_ids:
          )
          end

          sig do
            override.returns(
              {
                billing_bundle: Telnyx::BundlePricing::BillingBundleSummary,
                user_bundle_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
