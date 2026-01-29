# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      class Releases
        # Return the details of a Release request and its phone numbers.
        #
        # @overload retrieve(release_id, id:, request_options: {})
        #
        # @param release_id [String] Identifies a Release request
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse]
        #
        # @see Telnyx::Models::ExternalConnections::ReleaseRetrieveParams
        def retrieve(release_id, params)
          parsed, options = Telnyx::ExternalConnections::ReleaseRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/releases/%2$s", id, release_id],
            model: Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::ExternalConnections::ReleaseListParams} for more details.
        #
        # Returns a list of your Releases for the given external connection. These are
        # automatically created when you change the `connection_id` of a phone number that
        # is currently on Microsoft Teams.
        #
        # @overload list(id, filter: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param filter [Telnyx::Models::ExternalConnections::ReleaseListParams::Filter] Filter parameter for releases (deepObject style). Supports filtering by status,
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ExternalConnections::ReleaseListResponse>]
        #
        # @see Telnyx::Models::ExternalConnections::ReleaseListParams
        def list(id, params = {})
          parsed, options = Telnyx::ExternalConnections::ReleaseListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["external_connections/%1$s/releases", id],
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::ExternalConnections::ReleaseListResponse,
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
