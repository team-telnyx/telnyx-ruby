# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#remove_private_wireless_gateway
      class ActionRemovePrivateWirelessGatewayResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   This object represents a SIM card group action request. It allows tracking the
        #   current status of an operation that impacts the SIM card group and SIM card in
        #   it.
        #
        #   @return [Telnyx::Models::SimCardGroups::SimCardGroupAction, nil]
        optional :data, -> { Telnyx::SimCardGroups::SimCardGroupAction }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCardGroups::ActionRemovePrivateWirelessGatewayResponse} for
        #   more details.
        #
        #   @param data [Telnyx::Models::SimCardGroups::SimCardGroupAction] This object represents a SIM card group action request. It allows tracking the c
      end
    end
  end
end
