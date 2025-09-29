# typed: strong

module Telnyx
  module Resources
    class WireguardInterfaces
      # Create a new WireGuard Interface. Current limitation of 10 interfaces per user
      # can be created.
      sig do
        params(
          network_id: String,
          region_code: String,
          enable_sip_trunking: T::Boolean,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardInterfaceCreateResponse)
      end
      def create(
        # The id of the network associated with the interface.
        network_id:,
        # The region the interface should be deployed to.
        region_code:,
        # Enable SIP traffic forwarding over VPN interface.
        enable_sip_trunking: nil,
        # A user specified name for the interface.
        name: nil,
        request_options: {}
      )
      end

      # Retrieve a WireGuard Interfaces.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardInterfaceRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # List all WireGuard Interfaces.
      sig do
        params(
          filter: Telnyx::WireguardInterfaceListParams::Filter::OrHash,
          page: Telnyx::WireguardInterfaceListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardInterfaceListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a WireGuard Interface.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardInterfaceDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
