# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TermsOfService#retrieve_status
    class TermsOfServiceRetrieveStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product_type
      #   Which product's ToS to check. Defaults to `branded_calling`.
      #
      #   @return [Symbol, Telnyx::Models::TermsOfService::TosProductType, nil]
      optional :product_type, enum: -> { Telnyx::TermsOfService::TosProductType }

      # @!method initialize(product_type: nil, request_options: {})
      #   @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Which product's ToS to check. Defaults to `branded_calling`.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
