# typed: strong

module Telnyx
  module Resources
    class Networks
      sig { returns(Telnyx::Resources::Networks::DefaultGateway) }
      attr_reader :default_gateway

      # Create a new Network.
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkCreateResponse)
      end
      def create(
        # A user specified name for the network.
        name:,
        request_options: {}
      )
      end

      # Retrieve a Network.
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

      # Update a Network.
      sig do
        params(
          network_id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkUpdateResponse)
      end
      def update(
        # Identifies the resource.
        network_id,
        # A user specified name for the network.
        name:,
        request_options: {}
      )
      end

      # List all Networks.
      sig do
        params(
          filter: Telnyx::NetworkListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::NetworkListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Delete a Network.
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

      # List all Interfaces for a Network.
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
