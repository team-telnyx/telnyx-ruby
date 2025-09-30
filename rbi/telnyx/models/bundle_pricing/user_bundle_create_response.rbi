# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::UserBundleCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::BundlePricing::UserBundle]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[Telnyx::BundlePricing::UserBundle::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::BundlePricing::UserBundle] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
