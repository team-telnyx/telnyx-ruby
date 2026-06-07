# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#status
    class TermsOfServiceStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product_type
      #   Which product's ToS to check. Defaults to `branded_calling`.
      #
      #   @return [Symbol, Telnyx::Models::TermsOfServiceStatusParams::ProductType, nil]
      optional :product_type, enum: -> { Telnyx::TermsOfServiceStatusParams::ProductType }

      # @!method initialize(product_type: nil, request_options: {})
      #   @param product_type [Symbol, Telnyx::Models::TermsOfServiceStatusParams::ProductType] Which product's ToS to check. Defaults to `branded_calling`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Which product's ToS to check. Defaults to `branded_calling`.
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
