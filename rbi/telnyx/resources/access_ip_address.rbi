# typed: strong

module Telnyx
  module Resources
    class AccessIPAddress
      # Create new Access IP Address
      sig do
        params(
          ip_address: String,
          description: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def create(ip_address:, description: nil, request_options: {})
      end

      # Retrieve an access IP address
      sig do
        params(
          access_ip_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def retrieve(access_ip_address_id, request_options: {})
      end

      # List all Access IP Addresses
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

      # Delete access IP address
      sig do
        params(
          access_ip_address_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::AccessIPAddressResponse)
      end
      def delete(access_ip_address_id, request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
