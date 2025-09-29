# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrders#update
    class NumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::UpdateRegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::UpdateRegulatoryRequirement] }

      # @!method initialize(customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
