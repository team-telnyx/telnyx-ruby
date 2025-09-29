# typed: strong

module Telnyx
  module Resources
    class ExternalConnections
      class CivicAddresses
        # Return the details of an existing Civic Address with its Locations inside the
        # 'data' attribute of the response.
        sig do
          params(
            address_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse
          )
        end
        def retrieve(
          # Identifies a civic address or a location.
          address_id,
          # Identifies the resource.
          id:,
          request_options: {}
        )
        end

        # Returns the civic addresses and locations from Microsoft Teams.
        sig do
          params(
            id: String,
            filter:
              Telnyx::ExternalConnections::CivicAddressListParams::Filter::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::ExternalConnections::CivicAddressListResponse
          )
        end
        def list(
          # Identifies the resource.
          id,
          # Filter parameter for civic addresses (deepObject style). Supports filtering by
          # country.
          filter: nil,
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
end
