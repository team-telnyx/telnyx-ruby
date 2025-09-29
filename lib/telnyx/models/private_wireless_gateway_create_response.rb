# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#create
    class PrivateWirelessGatewayCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PrivateWirelessGateway, nil]
      optional :data, -> { Telnyx::PrivateWirelessGateway }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PrivateWirelessGateway]
    end
  end
end
