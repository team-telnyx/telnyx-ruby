# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalRequirements
      # @see Telnyx::Resources::ExternalRequirements::SubNumberOrders#retrieve
      class SubNumberOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute regulatory_requirement_id
        #
        #   @return [String]
        required :regulatory_requirement_id, String

        # @!attribute sub_number_order_id
        #
        #   @return [String]
        required :sub_number_order_id, String

        # @!method initialize(regulatory_requirement_id:, sub_number_order_id:, request_options: {})
        #   @param regulatory_requirement_id [String]
        #   @param sub_number_order_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
