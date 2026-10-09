# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway traffic.
      class Usage
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryParams} for more details.
        #
        # Return complete usage totals, UTC daily and model breakdowns, and guardrail
        # event counts for one token group owned by the authenticated account. Requires
        # the llm_token_gateway.usage.read permission; spend and guardrail read
        # permissions do not grant this combined report. All sections share one database
        # snapshot and include the latest usage corrections. Dates use an inclusive start
        # and exclusive end spanning 1 to 31 days. Only token_group_id, start_date and
        # end_date are accepted; pagination, group_by and other filters are rejected.
        # Spend is reference/enforcement USD, not invoice truth or BYOK provider charges.
        # Unknown cost is excluded from spend and reported through unknown_requests and
        # reserved_spend. Daily rows include zero-activity days. Model rows are ordered by
        # request count descending, then model name, and are limited to 1,000. Guardrail
        # counts count events, not distinct requests; recent_events contains at most 20
        # newest events. A report that exceeds model or query limits returns 503 rather
        # than a truncated success.
        #
        # @overload retrieve_summary(end_date:, start_date:, token_group_id:, request_options: {})
        #
        # @param end_date [Date] Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
        #
        # @param start_date [Date] Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
        #
        # @param token_group_id [String] ID of a token group owned by the authenticated account.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryParams
        def retrieve_summary(params)
          parsed, options = Telnyx::LlmTokenGateway::UsageRetrieveSummaryParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/usage/summary",
            query: query,
            model: Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse,
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
