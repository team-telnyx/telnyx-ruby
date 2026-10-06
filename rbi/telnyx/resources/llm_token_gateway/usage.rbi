# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway traffic.
      class Usage
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
        sig do
          params(
            end_date: Date,
            start_date: Date,
            token_group_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryResponse
          )
        end
        def retrieve_summary(
          # Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
          end_date:,
          # Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
          start_date:,
          # ID of a token group owned by the authenticated account.
          token_group_id:,
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
