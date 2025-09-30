# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundle < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::BundlePricing::UserBundle, Telnyx::Internal::AnyHash)
          end

        # User bundle's ID, this is used to identify the user bundle in the API.
        sig { returns(String) }
        attr_accessor :id

        # Status of the user bundle.
        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { returns(Telnyx::BundlePricing::BillingBundleSummary) }
        attr_reader :billing_bundle

        sig do
          params(
            billing_bundle: Telnyx::BundlePricing::BillingBundleSummary::OrHash
          ).void
        end
        attr_writer :billing_bundle

        # Date the user bundle was created.
        sig { returns(Date) }
        attr_accessor :created_at

        sig { returns(T::Array[Telnyx::BundlePricing::UserBundleResource]) }
        attr_accessor :resources

        # The customer's ID that owns this user bundle.
        sig { returns(String) }
        attr_accessor :user_id

        # Date the user bundle was last updated.
        sig { returns(T.nilable(Date)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            active: T::Boolean,
            billing_bundle: Telnyx::BundlePricing::BillingBundleSummary::OrHash,
            created_at: Date,
            resources:
              T::Array[Telnyx::BundlePricing::UserBundleResource::OrHash],
            user_id: String,
            updated_at: T.nilable(Date)
          ).returns(T.attached_class)
        end
        def self.new(
          # User bundle's ID, this is used to identify the user bundle in the API.
          id:,
          # Status of the user bundle.
          active:,
          billing_bundle:,
          # Date the user bundle was created.
          created_at:,
          resources:,
          # The customer's ID that owns this user bundle.
          user_id:,
          # Date the user bundle was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              billing_bundle: Telnyx::BundlePricing::BillingBundleSummary,
              created_at: Date,
              resources: T::Array[Telnyx::BundlePricing::UserBundleResource],
              user_id: String,
              updated_at: T.nilable(Date)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
