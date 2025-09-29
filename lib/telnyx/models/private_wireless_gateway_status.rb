# frozen_string_literal: true

module Telnyx
  module Models
    class PrivateWirelessGatewayStatus < Telnyx::Internal::Type::BaseModel
      response_only do
        # @!attribute error_code
        #   This attribute is an [error code](https://developers.telnyx.com/api/errors)
        #   related to the failure reason.
        #
        #   @return [String, nil]
        optional :error_code, String

        # @!attribute error_description
        #   This attribute provides a human-readable explanation of why a failure happened.
        #
        #   @return [String, nil]
        optional :error_description, String

        # @!attribute value
        #   The current status or failure details of the Private Wireless Gateway. <ul>
        #
        #    <li><code>provisioning</code> - the Private Wireless Gateway is being provisioned.</li>
        #    <li><code>provisioned</code> - the Private Wireless Gateway was provisioned and able to receive connections.</li>
        #    <li><code>failed</code> - the provisioning had failed for a reason and it requires an intervention.</li>
        #    <li><code>decommissioning</code> - the Private Wireless Gateway is being removed from the network.</li>
        #    </ul>
        #    Transitioning between the provisioning and provisioned states may take some time.
        #
        #   @return [Symbol, Telnyx::Models::PrivateWirelessGatewayStatus::Value, nil]
        optional :value, enum: -> { Telnyx::PrivateWirelessGatewayStatus::Value }
      end

      # @!method initialize(error_code: nil, error_description: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PrivateWirelessGatewayStatus} for more details.
      #
      #   The current status or failure details of the Private Wireless Gateway.
      #
      #   @param error_code [String] This attribute is an [error code](https://developers.telnyx.com/api/errors) rela
      #
      #   @param error_description [String] This attribute provides a human-readable explanation of why a failure happened.
      #
      #   @param value [Symbol, Telnyx::Models::PrivateWirelessGatewayStatus::Value] The current status or failure details of the Private Wireless Gateway. <ul>

      # The current status or failure details of the Private Wireless Gateway. <ul>
      #
      #  <li><code>provisioning</code> - the Private Wireless Gateway is being provisioned.</li>
      #  <li><code>provisioned</code> - the Private Wireless Gateway was provisioned and able to receive connections.</li>
      #  <li><code>failed</code> - the provisioning had failed for a reason and it requires an intervention.</li>
      #  <li><code>decommissioning</code> - the Private Wireless Gateway is being removed from the network.</li>
      #  </ul>
      #  Transitioning between the provisioning and provisioned states may take some time.
      #
      # @see Telnyx::Models::PrivateWirelessGatewayStatus#value
      module Value
        extend Telnyx::Internal::Type::Enum

        PROVISIONING = :provisioning
        PROVISIONED = :provisioned
        FAILED = :failed
        DECOMMISSIONING = :decommissioning

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
