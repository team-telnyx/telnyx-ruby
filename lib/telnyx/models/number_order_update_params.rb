# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrders#update
    class NumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute number_order_id
      #
      #   @return [String]
      required :number_order_id, String

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

      # @!method initialize(number_order_id:, customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #   @param number_order_id [String]
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
