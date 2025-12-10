# typed: strong

module Telnyx
  module Resources
    class PublicInternetGateways
      # Create a new Public Internet Gateway.
      sig do
        params(
          name: String,
          network_id: String,
          region_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayCreateResponse)
      end
      def create(
        # A user specified name for the interface.
        name: nil,
        # The id of the network associated with the interface.
        network_id: nil,
        # The region interface is deployed to.
        region_code: nil,
        request_options: {}
      )
      end

      # Retrieve a Public Internet Gateway.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # List all Public Internet Gateways.
      sig do
        params(
          filter: Telnyx::PublicInternetGatewayListParams::Filter::OrHash,
          page: Telnyx::PublicInternetGatewayListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayListResponse)
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

      # Delete a Public Internet Gateway.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayDeleteResponse)
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
