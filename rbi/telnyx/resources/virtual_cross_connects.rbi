# typed: strong

module Telnyx
  module Resources
    class VirtualCrossConnects
      # Create a new Virtual Cross Connect.<br /><br />For AWS and GCE, you have the
      # option of creating the primary connection first and the secondary connection
      # later. You also have the option of disabling the primary and/or secondary
      # connections at any time and later re-enabling them. With Azure, you do not have
      # this option. Azure requires both the primary and secondary connections to be
      # created at the same time and they can not be independantly disabled.
      sig do
        params(
          bgp_asn: Float,
          cloud_provider:
            Telnyx::VirtualCrossConnectCreateParams::CloudProvider::OrSymbol,
          cloud_provider_region: String,
          network_id: String,
          primary_cloud_account_id: String,
          region_code: String,
          bandwidth_mbps: Float,
          name: String,
          primary_bgp_key: String,
          primary_cloud_ip: String,
          primary_telnyx_ip: String,
          secondary_bgp_key: String,
          secondary_cloud_account_id: String,
          secondary_cloud_ip: String,
          secondary_telnyx_ip: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VirtualCrossConnectCreateResponse)
      end
      def create(
        # The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
        # will be assigned by Telnyx.
        bgp_asn:,
        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        cloud_provider:,
        # The region where your Virtual Private Cloud hosts are located.<br /><br />The
        # available regions can be found using the /virtual_cross_connect_regions
        # endpoint.
        cloud_provider_region:,
        # The id of the network associated with the interface.
        network_id:,
        # The identifier for your Virtual Private Cloud. The number will be different
        # based upon your Cloud provider.
        primary_cloud_account_id:,
        # The region the interface should be deployed to.
        region_code:,
        # The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
        # Connect.<br /><br />The available bandwidths can be found using the
        # /virtual_cross_connect_regions endpoint.
        bandwidth_mbps: nil,
        # A user specified name for the interface.
        name: nil,
        # The authentication key for BGP peer configuration.
        primary_bgp_key: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        primary_cloud_ip: nil,
        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        primary_telnyx_ip: nil,
        # The authentication key for BGP peer configuration.
        secondary_bgp_key: nil,
        # The identifier for your Virtual Private Cloud. The number will be different
        # based upon your Cloud provider.<br /><br />This attribute is only necessary for
        # GCE.
        secondary_cloud_account_id: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        secondary_cloud_ip: nil,
        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        secondary_telnyx_ip: nil,
        request_options: {}
      )
      end

      # Retrieve a Virtual Cross Connect.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VirtualCrossConnectRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update the Virtual Cross Connect.<br /><br />Cloud IPs can only be patched
      # during the `created` state, as GCE will only inform you of your generated IP
      # once the pending connection requested has been accepted. Once the Virtual Cross
      # Connect has moved to `provisioning`, the IPs can no longer be
      # patched.<br /><br />Once the Virtual Cross Connect has moved to `provisioned`
      # and you are ready to enable routing, you can toggle the routing announcements to
      # `true`.
      sig do
        params(
          id: String,
          primary_cloud_ip: String,
          primary_enabled: T::Boolean,
          primary_routing_announcement: T::Boolean,
          secondary_cloud_ip: String,
          secondary_enabled: T::Boolean,
          secondary_routing_announcement: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VirtualCrossConnectUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        primary_cloud_ip: nil,
        # Indicates whether the primary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        primary_enabled: nil,
        # Whether the primary BGP route is being announced.
        primary_routing_announcement: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        secondary_cloud_ip: nil,
        # Indicates whether the secondary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        secondary_enabled: nil,
        # Whether the secondary BGP route is being announced.
        secondary_routing_announcement: nil,
        request_options: {}
      )
      end

      # List all Virtual Cross Connects.
      sig do
        params(
          filter: Telnyx::VirtualCrossConnectListParams::Filter::OrHash,
          page: Telnyx::VirtualCrossConnectListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VirtualCrossConnectListResponse)
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

      # Delete a Virtual Cross Connect.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::VirtualCrossConnectDeleteResponse)
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
