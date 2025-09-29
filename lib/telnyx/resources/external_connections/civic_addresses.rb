# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      class CivicAddresses
        # Return the details of an existing Civic Address with its Locations inside the
        # 'data' attribute of the response.
        #
        # @overload retrieve(address_id, id:, request_options: {})
        #
        # @param address_id [String] Identifies a civic address or a location.
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalConnections::CivicAddressRetrieveParams
        def retrieve(address_id, params)
          parsed, options = Telnyx::ExternalConnections::CivicAddressRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/civic_addresses/%2$s", id, address_id],
            model: Telnyx::Models::ExternalConnections::CivicAddressRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::CivicAddressListParams} for more details.
        #
        # Returns the civic addresses and locations from Microsoft Teams.
        #
        # @overload list(id, filter: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param filter [Telnyx::Models::ExternalConnections::CivicAddressListParams::Filter] Filter parameter for civic addresses (deepObject style). Supports filtering by c
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::CivicAddressListResponse]
        #
        # @see Telnyx::Models::ExternalConnections::CivicAddressListParams
        def list(id, params = {})
          parsed, options = Telnyx::ExternalConnections::CivicAddressListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/civic_addresses", id],
            query: parsed,
            model: Telnyx::Models::ExternalConnections::CivicAddressListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
