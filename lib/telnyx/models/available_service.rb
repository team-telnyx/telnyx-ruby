# frozen_string_literal: true

module Telnyx
  module Models
    module AvailableService
      extend Telnyx::Internal::Type::Enum

      CLOUD_VPN = :cloud_vpn
      PRIVATE_WIRELESS_GATEWAY = :private_wireless_gateway
      VIRTUAL_CROSS_CONNECT = :virtual_cross_connect

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
