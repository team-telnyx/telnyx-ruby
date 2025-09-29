# typed: strong

module Telnyx
  module Models
    module AvailableService
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AvailableService) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CLOUD_VPN = T.let(:cloud_vpn, Telnyx::AvailableService::TaggedSymbol)
      PRIVATE_WIRELESS_GATEWAY =
        T.let(:private_wireless_gateway, Telnyx::AvailableService::TaggedSymbol)
      VIRTUAL_CROSS_CONNECT =
        T.let(:virtual_cross_connect, Telnyx::AvailableService::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::AvailableService::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
