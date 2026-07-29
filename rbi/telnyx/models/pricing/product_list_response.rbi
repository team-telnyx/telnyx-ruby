# typed: strong

module Telnyx
  module Models
    module Pricing
      class ProductListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Pricing::ProductListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Human-readable description of the product.
        sig { returns(String) }
        attr_accessor :description

        # Display name of the product.
        sig { returns(String) }
        attr_accessor :name

        # Product identifier used in the per-product pricing endpoint.
        sig { returns(String) }
        attr_accessor :slug

        sig do
          params(description: String, name: String, slug: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Human-readable description of the product.
          description:,
          # Display name of the product.
          name:,
          # Product identifier used in the per-product pricing endpoint.
          slug:
        )
        end

        sig do
          override.returns({ description: String, name: String, slug: String })
        end
        def to_hash
        end
      end
    end
  end
end
