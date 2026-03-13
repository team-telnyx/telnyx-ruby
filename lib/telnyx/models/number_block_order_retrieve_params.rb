# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberBlockOrders#retrieve
    class NumberBlockOrderRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute number_block_order_id
      #
      #   @return [String]
      required :number_block_order_id, String

      # @!method initialize(number_block_order_id:, request_options: {})
      #   @param number_block_order_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
