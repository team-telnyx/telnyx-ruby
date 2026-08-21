# typed: strong

module Telnyx
  module Resources
    # Public Internet Gateway operations
    class PublicInternetGateways
      # Requests creation of a public internet gateway on the specified network, giving
      # the network internet egress. Creation is asynchronous, so the request is
      # accepted and completes in the background.
      sig do
        params(
          body: Telnyx::PublicInternetGatewayCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PublicInternetGatewayCreateResponse)
      end
      def create(body:, request_options: {})
      end

      # Returns the details of a single public internet gateway by its identifier.
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

      # Returns a paginated list of the public internet gateways on your account, with
      # support for filtering.
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

      # Deletes the specified public internet gateway, removing internet egress through
      # it.
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
