# typed: strong

module Telnyx
  module Resources
    class Connections
      # Retrieves the high-level details of an existing connection. To retrieve specific
      # authentication information, use the endpoint for the specific connection type.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ConnectionRetrieveResponse)
      end
      def retrieve(
        # IP Connection ID
        id,
        request_options: {}
      )
      end

      # Returns a list of your connections irrespective of type.
      sig do
        params(
          filter: Telnyx::ConnectionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::ConnectionListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::ConnectionListResponse
          ]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
        # filter[outbound.outbound_voice_profile_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Lists all active calls for given connection. Acceptable connections are either
      # SIP connections with webhook_url or xml_request_url, call control or texml.
      # Returned results are cursor paginated.
      sig do
        params(
          connection_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::ConnectionListActiveCallsResponse
          ]
        )
      end
      def list_active_calls(
        # Telnyx connection id
        connection_id,
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
