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
      #   @return [Symbol, Telnyx::Models::TermsOfService::TosProductType, nil]
      optional :product_type, enum: -> { Telnyx::TermsOfService::TosProductType }

      # @!method initialize(product_type: nil, request_options: {})
      #   @param product_type [Symbol, Telnyx::Models::TermsOfService::TosProductType] Optional product filter. Omit to return info for all products.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
