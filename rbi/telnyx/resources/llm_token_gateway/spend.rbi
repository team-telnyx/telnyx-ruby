# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class Spend
        # Return request-level usage history for the authenticated account. Supply both
        # UTC dates or neither; omitting both returns the previous full UTC day. Dates use
        # a half-open range [start_date, end_date) of at most 31 days. Cost reflects
        # budget reference rates, not invoice charges. Unknown spend is excluded and
        # reported separately. The report snapshot supports at most 10,000 matching
        # requests, independently of page size. Exceeding this bound returns HTTP 503
        # without partial results. Narrow the date range or resource filters before
        # retrying. A failed report must not be interpreted as zero usage. Request tags
        # can filter either report and metadata:<key> can group the summary.
        sig do
          params(
            end_date: Date,
            end_user_id: String,
            metadata: T::Hash[Symbol, String],
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            start_date: Date,
            token_group_id: String,
            token_key_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsResponse
          )
        end
        def retrieve_events(
          end_date: nil,
          end_user_id: nil,
          # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
          # value matches the tag's text form exactly (booleans as true/false, integers in
          # decimal), so metadata[flag]=true matches both boolean true and the string
          # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
          # bounded by the account, the date range and the report timeout.
          metadata: nil,
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          start_date: nil,
          token_group_id: nil,
          token_key_id: nil,
          token_user_id: nil,
          request_options: {}
        )
        end

        # Return request counts, token counts and reference spend grouped by one
        # attribution dimension. Both UTC dates and group_by are required. Dates use a
        # half-open range [start_date, end_date) of at most 31 days. Cost reflects budget
        # reference rates, not invoice charges. Unknown spend is excluded and reported
        # separately. The report snapshot supports at most 10,000 matching requests,
        # independently of page size. Exceeding this bound returns HTTP 503 without
        # partial results. Narrow the date range or resource filters before retrying. A
        # failed report must not be interpreted as zero usage. Request tags can filter
        # either report and metadata:<key> can group the summary.
        sig do
          params(
            end_date: Date,
            group_by:
              T.any(Telnyx::LlmTokenGateway::SpendGroupBy::OrSymbol, String),
            start_date: Date,
            end_user_id: String,
            metadata: T::Hash[Symbol, String],
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            token_group_id: String,
            token_key_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse
          )
        end
        def retrieve_summary(
          end_date:,
          # A scope, or metadata:<key> to group by one request tag's text-form value;
          # requests without the key form one group with a null dimension_id.
          group_by:,
          start_date:,
          end_user_id: nil,
          # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
          # value matches the tag's text form exactly (booleans as true/false, integers in
          # decimal), so metadata[flag]=true matches both boolean true and the string
          # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
          # bounded by the account, the date range and the report timeout.
          metadata: nil,
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          token_group_id: nil,
          token_key_id: nil,
          token_user_id: nil,
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
