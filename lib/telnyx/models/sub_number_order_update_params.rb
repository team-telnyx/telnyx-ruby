# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#update
    class SubNumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute sub_number_order_id
      #
      #   @return [String]
      required :sub_number_order_id, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::UpdateRegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::UpdateRegulatoryRequirement] }

      # @!method initialize(sub_number_order_id:, regulatory_requirements: nil, request_options: {})
      #   @param sub_number_order_id [String]
      #   @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
