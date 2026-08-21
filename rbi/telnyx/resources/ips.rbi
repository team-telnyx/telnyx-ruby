# typed: strong

module Telnyx
  module Resources
    # IP operations
    class IPs
      # Creates a new IP record for use with IP-based connections, associating an IP
      # address with the specified connection.
      sig do
        params(
          ip_address: String,
          connection_id: String,
          port: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPCreateResponse)
      end
      def create(
        # IP adddress represented by this resource.
        ip_address:,
        # ID of the IP Connection to which this IP should be attached.
        connection_id: nil,
        # Port to use when connecting to this IP.
        port: nil,
        request_options: {}
      )
      end

      # Return the details regarding a specific IP.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPRetrieveResponse)
      end
      def retrieve(
        # Identifies the type of resource.
        id,
        request_options: {}
      )
      end

      # Updates the details of the specified IP record and returns the updated IP.
      sig do
        params(
          id: String,
          ip_address: String,
          connection_id: String,
          port: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPUpdateResponse)
      end
      def update(
        # Identifies the type of resource.
        id,
        # IP adddress represented by this resource.
        ip_address:,
        # ID of the IP Connection to which this IP should be attached.
        connection_id: nil,
        # Port to use when connecting to this IP.
        port: nil,
        request_options: {}
      )
      end

      # Get all IPs belonging to the user that match the given filters.
      sig do
        params(
          filter: Telnyx::IPListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::IP])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[ip_address], filter[port]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently deletes the specified IP record from its connection.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPDeleteResponse)
      end
      def delete(
        # Identifies the type of resource.
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
