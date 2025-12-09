# frozen_string_literal: true

module Telnyx
  module Resources
    class DetailRecords
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DetailRecordListParams} for more details.
      #
      # Search for any detail record across the Telnyx Platform
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::DetailRecordListParams::Filter] Filter records on a given record attribute and value. <br/>Example: filter[statu
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Array<String>] Specifies the sort order for results. <br/>Example: sort=-created_at
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::DetailRecordListResponse::MessageDetailRecord, Telnyx::Models::DetailRecordListResponse::ConferenceDetailRecord, Telnyx::Models::DetailRecordListResponse::ConferenceParticipantDetailRecord, Telnyx::Models::DetailRecordListResponse::AmdDetailRecord, Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord, Telnyx::Models::DetailRecordListResponse::SimCardUsageDetailRecord, Telnyx::Models::DetailRecordListResponse::MediaStorageDetailRecord>]
      #
      # @see Telnyx::Models::DetailRecordListParams
      def list(params = {})
        parsed, options = Telnyx::DetailRecordListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "detail_records",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
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
