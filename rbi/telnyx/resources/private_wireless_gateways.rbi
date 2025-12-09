# typed: strong

module Telnyx
  module Resources
    class PrivateWirelessGateways
      # Asynchronously create a Private Wireless Gateway for SIM cards for a previously
      # created network. This operation may take several minutes so you can check the
      # Private Wireless Gateway status at the section Get a Private Wireless Gateway.
      sig do
        params(
          name: String,
          network_id: String,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PrivateWirelessGatewayCreateResponse)
      end
      def create(
        # The private wireless gateway name.
        name:,
        # The identification of the related network resource.
        network_id:,
        # The code of the region where the private wireless gateway will be assigned. A
        # list of available regions can be found at the regions endpoint
        region_code: nil,
        request_options: {}
      )
      end

      # Retrieve information about a Private Wireless Gateway.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PrivateWirelessGatewayRetrieveResponse)
      end
      def retrieve(
        # Identifies the private wireless gateway.
        id,
        request_options: {}
      )
      end

      # Get all Private Wireless Gateways belonging to the user.
      sig do
        params(
          filter_created_at: String,
          filter_ip_range: String,
          filter_name: String,
          filter_region_code: String,
          filter_updated_at: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::PrivateWirelessGateway
          ]
        )
      end
      def list(
        # Private Wireless Gateway resource creation date.
        filter_created_at: nil,
        # The IP address range of the Private Wireless Gateway.
        filter_ip_range: nil,
        # The name of the Private Wireless Gateway.
        filter_name: nil,
        # The name of the region where the Private Wireless Gateway is deployed.
        filter_region_code: nil,
        # When the Private Wireless Gateway was last updated.
        filter_updated_at: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      # Deletes the Private Wireless Gateway.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PrivateWirelessGatewayDeleteResponse)
      end
      def delete(
        # Identifies the private wireless gateway.
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
