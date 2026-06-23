# typed: strong

module Telnyx
  module Resources
    # Public Internet Gateway operations
    class PublicInternetGateways
      # Create a new Public Internet Gateway.
      sig do
        params(
          body: Telnyx::PublicInternetGatewayCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayCreateResponse)
      end
      def create(body:, request_options: {})
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
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::PublicInternetGatewayRead
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
