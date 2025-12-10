# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class BillingBundleListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::BillingBundleListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::BundlePricing::BillingBundleSummary]) }
        attr_accessor :data

        sig { returns(Telnyx::BundlePricing::PaginationResponse) }
        attr_reader :meta

        sig do
          params(meta: Telnyx::BundlePricing::PaginationResponse::OrHash).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::BundlePricing::BillingBundleSummary::OrHash],
            meta: Telnyx::BundlePricing::PaginationResponse::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::BundlePricing::BillingBundleSummary],
              meta: Telnyx::BundlePricing::PaginationResponse
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
