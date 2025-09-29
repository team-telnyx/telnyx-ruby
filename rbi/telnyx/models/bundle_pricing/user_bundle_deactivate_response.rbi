# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleDeactivateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BundlePricing::UserBundleDeactivateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::BundlePricing::UserBundle) }
        attr_reader :data

        sig { params(data: Telnyx::BundlePricing::UserBundle::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::BundlePricing::UserBundle::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::BundlePricing::UserBundle }) }
        def to_hash
        end
      end
    end
  end
end
