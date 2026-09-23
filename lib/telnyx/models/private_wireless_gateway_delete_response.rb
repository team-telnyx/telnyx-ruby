# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#delete
    class PrivateWirelessGatewayDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WirelessPrivateWirelessGateway, nil]
      optional :data, -> { Telnyx::WirelessPrivateWirelessGateway }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WirelessPrivateWirelessGateway]
    end
  end
end
