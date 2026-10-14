# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class Spend
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsParams} for more details.
        #
        # Return request-level usage history for the authenticated account. Supply both
        # UTC dates or neither; omitting both returns the previous full UTC day. Dates use
        # a half-open range [start_date, end_date) of at most 31 days. Cost reflects
        # budget reference rates, not invoice charges. Unknown spend is excluded and
        # reported separately. The report snapshot supports at most 10,000 matching
        # requests, independently of page size. Exceeding this bound returns HTTP 503
        # without partial results. Narrow the date range or resource filters before
        # retrying. A failed report must not be interpreted as zero usage. Request tags
        # can filter either report and metadata:<key> can group the summary.
        #
        # @overload retrieve_events(end_date: nil, end_user_id: nil, metadata: nil, page_number: nil, page_size: nil, page_snapshot: nil, start_date: nil, token_group_id: nil, token_key_id: nil, token_user_id: nil, request_options: {})
        #
        # @param end_date [Date]
        #
        # @param end_user_id [String]
        #
        # @param metadata [Hash{Symbol=>String}] Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        # @param start_date [Date]
        #
        # @param token_group_id [String]
        #
        # @param token_key_id [String]
        #
        # @param token_user_id [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsParams
        def retrieve_events(params = {})
          parsed, options = Telnyx::LlmTokenGateway::SpendRetrieveEventsParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/spend/events",
            query: query.transform_keys(
              page_number: "page[number]",
              page_size: "page[size]",
              page_snapshot: "page[snapshot]"
            ),
            model: Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryParams} for more details.
        #
        # Return request counts, token counts and reference spend grouped by one
        # attribution dimension. Both UTC dates and group_by are required. Dates use a
        # half-open range [start_date, end_date) of at most 31 days. Cost reflects budget
        # reference rates, not invoice charges. Unknown spend is excluded and reported
        # separately. The report snapshot supports at most 10,000 matching requests,
        # independently of page size. Exceeding this bound returns HTTP 503 without
        # partial results. Narrow the date range or resource filters before retrying. A
        # failed report must not be interpreted as zero usage. Request tags can filter
        # either report and metadata:<key> can group the summary.
        #
        # @overload retrieve_summary(end_date:, group_by:, start_date:, end_user_id: nil, metadata: nil, page_number: nil, page_size: nil, page_snapshot: nil, token_group_id: nil, token_key_id: nil, token_user_id: nil, request_options: {})
        #
        # @param end_date [Date]
        #
        # @param group_by [Symbol, String, Telnyx::Models::LlmTokenGateway::SpendGroupBy] A scope, or metadata:<key> to group by one request tag's text-form value; reques
        #
        # @param start_date [Date]
        #
        # @param end_user_id [String]
        #
        # @param metadata [Hash{Symbol=>String}] Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        # @param token_group_id [String]
        #
        # @param token_key_id [String]
        #
        # @param token_user_id [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryParams
        def retrieve_summary(params)
          parsed, options = Telnyx::LlmTokenGateway::SpendRetrieveSummaryParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/spend/summary",
            query: query.transform_keys(
              page_number: "page[number]",
              page_size: "page[size]",
              page_snapshot: "page[snapshot]"
            ),
            model: Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse,
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
