# typed: strong

module Telnyx
  module Resources
    # Network operations
    class Networks
      # Network operations
      sig { returns(Telnyx::Resources::Networks::DefaultGateway) }
      attr_reader :default_gateway

      # Creates a new private network, the container that links your WireGuard
      # interfaces, gateways, and cross connects.
      sig do
        params(
          network_create: Telnyx::NetworkCreate::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkCreateResponse)
      end
      def create(network_create:, request_options: {})
      end

      # Returns the details of a single network by its identifier.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates the specified network's attributes and returns the updated network.
      sig do
        params(
          network_id: String,
          network_create: Telnyx::NetworkCreate::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkUpdateResponse)
      end
      def update(
        # Identifies the resource.
        network_id,
        network_create:,
        request_options: {}
      )
      end

      # Returns a paginated list of the private networks on your account, with support
      # for filtering.
      sig do
        params(
          filter: Telnyx::NetworkListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::Network])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes the specified network from your account.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Returns a paginated list of the interfaces attached to the specified network,
      # with support for filtering.
      sig do
        params(
          id: String,
          filter: Telnyx::NetworkListInterfacesParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::NetworkListInterfacesResponse
          ]
        )
      end
      def list_interfaces(
        # Identifies the resource.
        id,
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[type], filter[status]
        filter: nil,
        page_number: nil,
        page_size: nil,
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
