# typed: strong

module Telnyx
  module Models
    class PrivateWirelessGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PrivateWirelessGatewayCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The private wireless gateway name.
      sig { returns(String) }
      attr_accessor :name

      # The identification of the related network resource.
      sig { returns(String) }
      attr_accessor :network_id

      # Determines how IP addresses are assigned to SIM cards using this gateway. With
      # static, each SIM card gets a fixed IP address from the gateway's IP range that
      # is preserved across sessions. With dynamic, an IP address is assigned by the
      # network at attach time and may change between sessions. If omitted, the gateway
      # is created with the default address mode, dynamic.
      sig do
        returns(
          T.nilable(
            Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::OrSymbol
          )
        )
      end
      attr_reader :address_mode

      sig do
        params(
          address_mode:
            Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::OrSymbol
        ).void
      end
      attr_writer :address_mode

      # The code of the region where the private wireless gateway will be assigned. A
      # list of available regions can be found at the regions endpoint
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      sig do
        params(
          name: String,
          network_id: String,
          address_mode:
            Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::OrSymbol,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The private wireless gateway name.
        name:,
        # The identification of the related network resource.
        network_id:,
        # Determines how IP addresses are assigned to SIM cards using this gateway. With
        # static, each SIM card gets a fixed IP address from the gateway's IP range that
        # is preserved across sessions. With dynamic, an IP address is assigned by the
        # network at attach time and may change between sessions. If omitted, the gateway
        # is created with the default address mode, dynamic.
        address_mode: nil,
        # The code of the region where the private wireless gateway will be assigned. A
        # list of available regions can be found at the regions endpoint
        region_code: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            network_id: String,
            address_mode:
              Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::OrSymbol,
            region_code: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Determines how IP addresses are assigned to SIM cards using this gateway. With
      # static, each SIM card gets a fixed IP address from the gateway's IP range that
      # is preserved across sessions. With dynamic, an IP address is assigned by the
      # network at attach time and may change between sessions. If omitted, the gateway
      # is created with the default address mode, dynamic.
      module AddressMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::PrivateWirelessGatewayCreateParams::AddressMode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STATIC =
          T.let(
            :static,
            Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::TaggedSymbol
          )
        DYNAMIC =
          T.let(
            :dynamic,
            Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PrivateWirelessGatewayCreateParams::AddressMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
