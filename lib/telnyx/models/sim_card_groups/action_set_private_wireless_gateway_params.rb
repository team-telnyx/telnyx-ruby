# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#set_private_wireless_gateway
      class ActionSetPrivateWirelessGatewayParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute private_wireless_gateway_id
        #   The identification of the related Private Wireless Gateway resource.
        #
        #   @return [String]
        required :private_wireless_gateway_id, String

        # @!method initialize(private_wireless_gateway_id:, request_options: {})
        #   @param private_wireless_gateway_id [String] The identification of the related Private Wireless Gateway resource.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
