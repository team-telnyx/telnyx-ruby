# typed: strong

module Telnyx
  module Resources
    # WireGuard Interface operations
    class WireguardInterfaces
      # Create a new WireGuard Interface. Current limitation of 10 interfaces per user
      # can be created.
      sig do
        params(
          body: Telnyx::WireguardInterfaceCreateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::WireguardInterfaceCreateResponse)
      end
      def create(body:, request_options: {})
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
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::WireguardInterfaceRead
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
