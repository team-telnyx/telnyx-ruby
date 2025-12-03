# typed: strong

module Telnyx
  module Models
    class WireguardInterfaceCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WireguardInterfaceCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The region the interface should be deployed to.
      sig { returns(String) }
      attr_accessor :region_code

      # Enable SIP traffic forwarding over VPN interface.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_sip_trunking

      sig { params(enable_sip_trunking: T::Boolean).void }
      attr_writer :enable_sip_trunking

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

      sig do
        params(
          region_code: String,
          enable_sip_trunking: T::Boolean,
          name: String,
          network_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The region the interface should be deployed to.
        region_code:,
        # Enable SIP traffic forwarding over VPN interface.
        enable_sip_trunking: nil,
        # A user specified name for the interface.
        name: nil,
        # The id of the network associated with the interface.
        network_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            region_code: String,
            enable_sip_trunking: T::Boolean,
            name: String,
            network_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
