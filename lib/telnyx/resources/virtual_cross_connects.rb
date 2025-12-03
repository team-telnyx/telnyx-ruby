# frozen_string_literal: true

module Telnyx
  module Resources
    class VirtualCrossConnects
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VirtualCrossConnectCreateParams} for more details.
      #
      # Create a new Virtual Cross Connect.<br /><br />For AWS and GCE, you have the
      # option of creating the primary connection first and the secondary connection
      # later. You also have the option of disabling the primary and/or secondary
      # connections at any time and later re-enabling them. With Azure, you do not have
      # this option. Azure requires both the primary and secondary connections to be
      # created at the same time and they can not be independantly disabled.
      #
      # @overload create(region_code:, bandwidth_mbps: nil, bgp_asn: nil, cloud_provider: nil, cloud_provider_region: nil, name: nil, network_id: nil, primary_bgp_key: nil, primary_cloud_account_id: nil, primary_cloud_ip: nil, primary_telnyx_ip: nil, secondary_bgp_key: nil, secondary_cloud_account_id: nil, secondary_cloud_ip: nil, secondary_telnyx_ip: nil, request_options: {})
      #
      # @param region_code [String] The region the interface should be deployed to.
      #
      # @param bandwidth_mbps [Float] The desired throughput in Megabits per Second (Mbps) for your Virtual Cross Conn
      #
      # @param bgp_asn [Float] The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
      #
      # @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectCreateParams::CloudProvider] The Virtual Private Cloud with which you would like to establish a cross connect
      #
      # @param cloud_provider_region [String] The region where your Virtual Private Cloud hosts are located.<br /><br />The av
      #
      # @param name [String] A user specified name for the interface.
      #
      # @param network_id [String] The id of the network associated with the interface.
      #
      # @param primary_bgp_key [String] The authentication key for BGP peer configuration.
      #
      # @param primary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
      #
      # @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      # @param primary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b
      #
      # @param secondary_bgp_key [String] The authentication key for BGP peer configuration.
      #
      # @param secondary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
      #
      # @param secondary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      # @param secondary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VirtualCrossConnectCreateResponse]
      #
      # @see Telnyx::Models::VirtualCrossConnectCreateParams
      def create(params)
        parsed, options = Telnyx::VirtualCrossConnectCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "virtual_cross_connects",
          body: parsed,
          model: Telnyx::Models::VirtualCrossConnectCreateResponse,
          options: options
        )
      end

      # Retrieve a Virtual Cross Connect.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VirtualCrossConnectRetrieveResponse]
      #
      # @see Telnyx::Models::VirtualCrossConnectRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["virtual_cross_connects/%1$s", id],
          model: Telnyx::Models::VirtualCrossConnectRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VirtualCrossConnectUpdateParams} for more details.
      #
      # Update the Virtual Cross Connect.<br /><br />Cloud IPs can only be patched
      # during the `created` state, as GCE will only inform you of your generated IP
      # once the pending connection requested has been accepted. Once the Virtual Cross
      # Connect has moved to `provisioning`, the IPs can no longer be
      # patched.<br /><br />Once the Virtual Cross Connect has moved to `provisioned`
      # and you are ready to enable routing, you can toggle the routing announcements to
      # `true`.
      #
      # @overload update(id, primary_cloud_ip: nil, primary_enabled: nil, primary_routing_announcement: nil, secondary_cloud_ip: nil, secondary_enabled: nil, secondary_routing_announcement: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      # @param primary_enabled [Boolean] Indicates whether the primary circuit is enabled. Setting this to `false` will d
      #
      # @param primary_routing_announcement [Boolean] Whether the primary BGP route is being announced.
      #
      # @param secondary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      # @param secondary_enabled [Boolean] Indicates whether the secondary circuit is enabled. Setting this to `false` will
      #
      # @param secondary_routing_announcement [Boolean] Whether the secondary BGP route is being announced.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VirtualCrossConnectUpdateResponse]
      #
      # @see Telnyx::Models::VirtualCrossConnectUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::VirtualCrossConnectUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["virtual_cross_connects/%1$s", id],
          body: parsed,
          model: Telnyx::Models::VirtualCrossConnectUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VirtualCrossConnectListParams} for more details.
      #
      # List all Virtual Cross Connects.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::VirtualCrossConnectListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      # @param page [Telnyx::Models::VirtualCrossConnectListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::VirtualCrossConnectListResponse>]
      #
      # @see Telnyx::Models::VirtualCrossConnectListParams
      def list(params = {})
        parsed, options = Telnyx::VirtualCrossConnectListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "virtual_cross_connects",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Models::VirtualCrossConnectListResponse,
          options: options
        )
      end

      # Delete a Virtual Cross Connect.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VirtualCrossConnectDeleteResponse]
      #
      # @see Telnyx::Models::VirtualCrossConnectDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["virtual_cross_connects/%1$s", id],
          model: Telnyx::Models::VirtualCrossConnectDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
