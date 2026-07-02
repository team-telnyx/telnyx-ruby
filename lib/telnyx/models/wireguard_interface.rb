# frozen_string_literal: true

module Telnyx
  module Models
    class WireguardInterface < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the interface.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the network associated with the interface.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute enable_sip_trunking
      #   Enable SIP traffic forwarding over VPN interface.
      #
      #   @return [Boolean, nil]
      optional :enable_sip_trunking, Telnyx::Internal::Type::Boolean

      # @!method initialize(name: nil, network_id: nil, enable_sip_trunking: nil)
      #   @param name [String] A user specified name for the interface.
      #
      #   @param network_id [String] The id of the network associated with the interface.
      #
      #   @param enable_sip_trunking [Boolean] Enable SIP traffic forwarding over VPN interface.
    end
  end
end
