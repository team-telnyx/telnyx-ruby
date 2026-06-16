# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#info
    class TermsOfServiceInfoParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product_type
      #   Optional product filter. Omit to return info for all products.
      #
      #   @return [Symbol, Telnyx::Models::TermsOfServiceInfoParams::ProductType, nil]
      optional :product_type, enum: -> { Telnyx::TermsOfServiceInfoParams::ProductType }

      # @!method initialize(product_type: nil, request_options: {})
      #   @param product_type [Symbol, Telnyx::Models::TermsOfServiceInfoParams::ProductType] Optional product filter. Omit to return info for all products.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Optional product filter. Omit to return info for all products.
      module ProductType
        extend Telnyx::Internal::Type::Enum

        BRANDED_CALLING = :branded_calling
        NUMBER_REPUTATION = :number_reputation

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
