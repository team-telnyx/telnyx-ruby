# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AdvancedOrders#update_requirement_group
    class AdvancedOrderUpdateRequirementGroupParams < Telnyx::Models::AdvancedOrder
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute advanced_order_id
      #
      #   @return [String]
      required :advanced_order_id, String

      # @!method initialize(advanced_order_id:, request_options: {})
      #   @param advanced_order_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
