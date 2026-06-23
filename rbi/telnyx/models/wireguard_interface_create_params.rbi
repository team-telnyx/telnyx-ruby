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

      sig { returns(Telnyx::WireguardInterfaceCreateParams::Body) }
      attr_reader :body

      sig do
        params(body: Telnyx::WireguardInterfaceCreateParams::Body::OrHash).void
      end
      attr_writer :body

      sig do
        params(
          body: Telnyx::WireguardInterfaceCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body: Telnyx::WireguardInterfaceCreateParams::Body,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WireguardInterfaceCreateParams::Body,
              Telnyx::Internal::AnyHash
            )
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

        # The region the interface should be deployed to.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        sig do
          params(
            name: String,
            network_id: String,
            enable_sip_trunking: T::Boolean,
            region_code: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A user specified name for the interface.
          name: nil,
          # The id of the network associated with the interface.
          network_id: nil,
          # Enable SIP traffic forwarding over VPN interface.
          enable_sip_trunking: nil,
          # The region the interface should be deployed to.
          region_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              updated_at: String,
              name: String,
              network_id: String,
              status: Telnyx::InterfaceStatus::OrSymbol,
              enable_sip_trunking: T::Boolean,
              endpoint: String,
              public_key: String,
              region_code: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
