# typed: strong

module Telnyx
  module Resources
    # IP Address Operations
    class AccessIPAddress
      # Create a new access IP address entry on your account.
      sig do
        params(
          ip_address: String,
          description: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def create(ip_address:, description: nil, request_options: {})
      end

      # Retrieve the details of a specific access IP address.
      sig do
        params(
          access_ip_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def retrieve(
        # Unique identifier of the access ip address.
        access_ip_address_id,
        request_options: {}
      )
      end

      # Retrieve a paginated list of access IP addresses configured on your account.
      sig do
        params(
          filter: Telnyx::AccessIPAddressListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::AccessIPAddressResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[ip_source],
        # filter[ip_address], filter[created_at]. Supports complex bracket operations for
        # dynamic filtering.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an access IP address entry from your account.
      sig do
        params(
          access_ip_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def delete(
        # Unique identifier of the access ip address.
        access_ip_address_id,
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
