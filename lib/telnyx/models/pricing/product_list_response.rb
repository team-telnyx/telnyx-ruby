# frozen_string_literal: true

module Telnyx
  module Models
    module Pricing
      # @see Telnyx::Resources::Pricing::Products#list
      class ProductListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #   Human-readable description of the product.
        #
        #   @return [String]
        required :description, String

        # @!attribute name
        #   Display name of the product.
        #
        #   @return [String]
        required :name, String

        # @!attribute slug
        #   Product identifier used in the per-product pricing endpoint.
        #
        #   @return [String]
        required :slug, String

        # @!method initialize(description:, name:, slug:)
        #   @param description [String] Human-readable description of the product.
        #
        #   @param name [String] Display name of the product.
        #
        #   @param slug [String] Product identifier used in the per-product pricing endpoint.
      end
    end
  end
end
