# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleListResourcesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::UserBundleListResourcesResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::BundlePricing::UserBundleResource]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::BundlePricing::UserBundleResource::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::BundlePricing::UserBundleResource] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
