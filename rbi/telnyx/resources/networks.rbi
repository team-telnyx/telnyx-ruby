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
          id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # A user specified name for the network.
        name:,
        request_options: {}
      )
      end

      # List all Networks.
      sig do
        params(
          filter: Telnyx::NetworkListParams::Filter::OrHash,
          page: Telnyx::NetworkListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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
          page: Telnyx::NetworkListInterfacesParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NetworkListInterfacesResponse)
      end
      def list_interfaces(
        # Identifies the resource.
        id,
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[type], filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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
