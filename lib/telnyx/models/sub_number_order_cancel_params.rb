# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#cancel
    class SubNumberOrderCancelParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute sub_number_order_id
      #
      #   @return [String]
      required :sub_number_order_id, String

      # @!method initialize(sub_number_order_id:, request_options: {})
      #   @param sub_number_order_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
