# typed: strong

module Telnyx
  module Resources
    class Fqdns
      # Create a new FQDN object.
      sig do
        params(
          connection_id: String,
          dns_record_type: String,
          fqdn: String,
          port: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FqdnCreateResponse)
      end
      def create(
        # ID of the FQDN connection to which this IP should be attached.
        connection_id:,
        # The DNS record type for the FQDN. For cases where a port is not set, the DNS
        # record type must be 'srv'. For cases where a port is set, the DNS record type
        # must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
        # will be used.
        dns_record_type:,
        # FQDN represented by this resource.
        fqdn:,
        # Port to use when connecting to this FQDN.
        port: nil,
        request_options: {}
      )
      end

      # Return the details regarding a specific FQDN.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FqdnRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update the details of a specific FQDN.
      sig do
        params(
          id: String,
          connection_id: String,
          dns_record_type: String,
          fqdn: String,
          port: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FqdnUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # ID of the FQDN connection to which this IP should be attached.
        connection_id: nil,
        # The DNS record type for the FQDN. For cases where a port is not set, the DNS
        # record type must be 'srv'. For cases where a port is set, the DNS record type
        # must be 'a'. If the DNS record type is 'a' and a port is not specified, 5060
        # will be used.
        dns_record_type: nil,
        # FQDN represented by this resource.
        fqdn: nil,
        # Port to use when connecting to this FQDN.
        port: nil,
        request_options: {}
      )
      end

      # Get all FQDNs belonging to the user that match the given filters.
      sig do
        params(
          filter: Telnyx::FqdnListParams::Filter::OrHash,
          page: Telnyx::FqdnListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::Fqdn])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_id], filter[fqdn], filter[port], filter[dns_record_type]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # Delete an FQDN.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FqdnDeleteResponse)
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
