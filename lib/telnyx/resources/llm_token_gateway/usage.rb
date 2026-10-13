# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class Usage
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::UsageRetrieveExportParams} for more details.
        #
        # Durable, replayable, content-free usage export for customer pipelines. Requires
        # the dedicated llm_token_gateway.usage_export.read V2 action; spend.read and
        # usage.read do not grant it. Records are inference.request (one per immutable
        # ledger revision; a correction adds a new id with supersedes, keep the highest
        # revision per request_id) and guardrail.evaluation (one per guardrail event,
        # including blocked prompts with no inference record; correlate on request_id).
        # Delivery is at least once in commit order: deduplicate on id. Records appear
        # after settlement and after every older database transaction has finished
        # (meta.horizon_lag_seconds); keep polling with next_cursor, which is always
        # returned and is reusable after has_more is false. After a logical database
        # restore, restart from start_time and deduplicate on id; a cursor from before it
        # may return 409 cursor_expired (no Retry-After). Retention promise 30 days. No
        # prompts, responses, provider credentials, supplier or customer rates. Gateway
        # reference/enforcement usage, not invoice truth or BYOK provider charges.
        #
        # @overload retrieve_export(cursor: nil, limit: nil, start_time: nil, types: nil, request_options: {})
        #
        # @param cursor [String] Opaque next_cursor from a previous page; not combinable with start_time. Bound t
        #
        # @param limit [Integer]
        #
        # @param start_time [Time] First page only: RFC 3339 with offset, at most 30 days ago and not in the future
        #
        # @param types [String] Comma-separated subset of inference.request,guardrail.evaluation; default both.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::UsageRetrieveExportParams
        def retrieve_export(params = {})
          parsed, options = Telnyx::LlmTokenGateway::UsageRetrieveExportParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/usage/export",
            query: query,
            model: Telnyx::Models::LlmTokenGateway::UsageRetrieveExportResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryParams} for more details.
        #
        # Gateway reference/enforcement usage, not invoice truth or BYOK provider charges.
        # Requires the dedicated llm_token_gateway.usage.read V2 action for combined spend
        # and guardrail reporting; existing spend.read and guardrail_events.read grants do
        # not grant this endpoint. All totals, UTC daily buckets, models and latest 20
        # guardrail events share one database snapshot. UTC half-open dates, at most 31
        # days. Zero-filled days; at most 1000 models (503 rather than truncation on
        # overflow/timeout). Known tokens sum independently known categories across latest
        # attempt evidence, including corrections; unknown spend is excluded and
        # unknown_requests/reserved_spend remain explicit. Guardrail counts count events,
        # not distinct requests. No raw spend events, prompts or secrets. This read-only
        # report creates no pagination snapshot and accepts no pagination parameters.
        #
        # @overload retrieve_summary(end_date:, start_date:, token_group_id:, metadata: nil, request_options: {})
        #
        # @param end_date [Date]
        #
        # @param start_date [Date]
        #
        # @param token_group_id [String]
        #
        # @param metadata [Hash{Symbol=>String}] Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
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
