# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberBlocks#delete
      class PhoneNumberBlockDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute porting_order_id
        #
        #   @return [String]
        required :porting_order_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(porting_order_id:, id:, request_options: {})
        #   @param porting_order_id [String]
        #   @param id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
