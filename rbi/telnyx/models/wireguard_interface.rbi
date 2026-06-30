# typed: strong

module Telnyx
  module Models
    class WireguardInterface < Telnyx::Models::Record
      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardInterface, Telnyx::Internal::AnyHash)
        end

      # A user specified name for the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The id of the network associated with the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      # Enable SIP traffic forwarding over VPN interface.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_sip_trunking

      sig { params(enable_sip_trunking: T::Boolean).void }
      attr_writer :enable_sip_trunking

      sig do
        params(
          name: String,
          network_id: String,
          enable_sip_trunking: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # A user specified name for the interface.
        name: nil,
        # The id of the network associated with the interface.
        network_id: nil,
        # Enable SIP traffic forwarding over VPN interface.
        enable_sip_trunking: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            network_id: String,
            status: Telnyx::InterfaceStatus::OrSymbol,
            enable_sip_trunking: T::Boolean,
            endpoint: String,
            public_key: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
