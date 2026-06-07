# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#retrieve_info
    class TermsOfServiceRetrieveInfoParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product_type
      #   Optional product filter. Omit to return info for all products.
      #
      #   @return [Symbol, Telnyx::Models::TermsOfServiceRetrieveInfoParams::ProductType, nil]
      optional :product_type, enum: -> { Telnyx::TermsOfServiceRetrieveInfoParams::ProductType }

      # @!method initialize(product_type: nil, request_options: {})
      #   @param product_type [Symbol, Telnyx::Models::TermsOfServiceRetrieveInfoParams::ProductType] Optional product filter. Omit to return info for all products.
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
