# frozen_string_literal: true

module Telnyx
  module Resources
    class DetailRecords
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DetailRecordListParams} for more details.
      #
      # Search for any detail record across the Telnyx Platform
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DetailRecordListParams::Filter] Filter records on a given record attribute and value. <br/>Example: filter[statu
      #
      # @param page [Telnyx::Models::DetailRecordListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Array<String>] Specifies the sort order for results. <br/>Example: sort=-created_at
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DetailRecordListResponse]
      #
      # @see Telnyx::Models::DetailRecordListParams
      def list(params = {})
        parsed, options = Telnyx::DetailRecordListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "detail_records",
          query: parsed,
          model: Telnyx::Models::DetailRecordListResponse,
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
