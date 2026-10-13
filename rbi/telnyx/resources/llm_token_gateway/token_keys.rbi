# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class TokenKeys
        # Create gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. The token secret is returned
        # only on the original create response. A replay returns metadata without the
        # secret. Provisioning is advisory; ready is not a guarantee of inference
        # availability.
        sig do
          params(
            name: String,
            token_group_id: String,
            idempotency_key: String,
            allowed_models: T.nilable(T::Array[String]),
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            expires_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            required_end_user_id: T::Boolean,
            rpm_limit: T.nilable(Integer),
            token_user_id: T.nilable(String),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenKeyResponse)
        end
        def create(
          # Body param
          name:,
          # Body param
          token_group_id:,
          # Header param: 24h, scoped by account+method+path. Same key/body returns same
          # outcome; changed body 409; in-progress 409 with Retry-After. Token-create replay
          # returns 200 metadata WITHOUT secret.
          idempotency_key:,
          # Body param
          allowed_models: nil,
          # Body param
          blocked: nil,
          # Body param
          budget_duration: nil,
          # Body param
          expires_at: nil,
          # Body param: USD, decimal precision at most 6 places; parse exactly to integer
          # micro-USD, never binary float accounting.
          max_budget: nil,
          # Body param: Optional maximum concurrent reserved/dispatched cache misses across
          # replicas. Null means no concurrency cap. Cache hits do not consume slots;
          # unknown usage retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Body param: Require a nonempty caller-asserted end-user ID; not proof of
          # identity.
          required_end_user_id: nil,
          # Body param: Omitted or null defaults to the maximum (6000) (on a blocked key,
          # null is kept until the key is unblocked); a value below the minimum (1) or above
          # the maximum is rejected with 400 limit_out_of_range; a malformed value
          # (negative, wrong type or precision) is 400 invalid_request. Block the key
          # (blocked: true) to deny it; blocking is always accepted.
          rpm_limit: nil,
          # Body param
          token_user_id: nil,
          # Body param: Omitted or null defaults to the maximum (10000000) (on a blocked
          # key, null is kept until the key is unblocked); a value below the minimum (1) or
          # above the maximum is rejected with 400 limit_out_of_range; a malformed value
          # (negative, wrong type or precision) is 400 invalid_request. Block the key
          # (blocked: true) to deny it; blocking is always accepted.
          tpm_limit: nil,
          request_options: {}
        )
        end

        # Get gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenKeyResponse)
        end
        def retrieve(id, request_options: {})
        end

        # Update gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. Omitted fields are preserved.
        # Null clears max_parallel_requests; null resets budget and rate limits to their
        # maximum. A stale If-Match returns 412.
        sig do
          params(
            id: String,
            idempotency_key: String,
            if_match: String,
            allowed_models: T.nilable(T::Array[String]),
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            expires_at: T.nilable(Time),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            name: String,
            required_end_user_id: T::Boolean,
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenKeyResponse)
        end
        def update(
          # Path param
          id,
          # Header param: 24h, scoped by account+method+path. Same key/body returns same
          # outcome; changed body 409; in-progress 409 with Retry-After. Token-create replay
          # returns 200 metadata WITHOUT secret.
          idempotency_key:,
          # Header param: Exact quoted resource-version ETag; an exact intermediary-weakened
          # echo W/"n" is accepted. Wildcard, combined and malformed validators are
          # rejected; stale 412; missing 428. HTTP field names are case-insensitive.
          # Replayed idempotent result is checked first.
          if_match:,
          # Body param
          allowed_models: nil,
          # Body param
          blocked: nil,
          # Body param
          budget_duration: nil,
          # Body param
          expires_at: nil,
          # Body param: USD, decimal precision at most 6 places; parse exactly to integer
          # micro-USD, never binary float accounting.
          max_budget: nil,
          # Body param: Optional maximum concurrent reserved/dispatched cache misses across
          # replicas. Null means no concurrency cap. Cache hits do not consume slots;
          # unknown usage retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Body param
          name: nil,
          # Body param: Require a nonempty caller-asserted end-user ID; not proof of
          # identity. Omission preserves the current requirement.
          required_end_user_id: nil,
          # Body param: Omitted or null defaults to the maximum (6000) (on a blocked key,
          # null is kept until the key is unblocked); a value below the minimum (1) or above
          # the maximum is rejected with 400 limit_out_of_range; a malformed value
          # (negative, wrong type or precision) is 400 invalid_request. Block the key
          # (blocked: true) to deny it; blocking is always accepted.
          rpm_limit: nil,
          # Body param: Omitted or null defaults to the maximum (10000000) (on a blocked
          # key, null is kept until the key is unblocked); a value below the minimum (1) or
          # above the maximum is rejected with 400 limit_out_of_range; a malformed value
          # (negative, wrong type or precision) is 400 invalid_request. Block the key
          # (blocked: true) to deny it; blocking is always accepted.
          tpm_limit: nil,
          request_options: {}
        )
        end

        # List gateway token keys within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            token_group_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::LlmTokenGateway::TokenKey
            ]
          )
        end
        def list(
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          token_group_id: nil,
          token_user_id: nil,
          request_options: {}
        )
        end

        # Revoke this token key. Acknowledged revocation blocks new admissions with the
        # key; requests already admitted may complete. Historical usage attribution is
        # retained. Other keys in the group are unchanged.
        sig do
          params(
            id: String,
            idempotency_key: String,
            if_match: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          id,
          # 24h, scoped by account+method+path. Same key/body returns same outcome; changed
          # body 409; in-progress 409 with Retry-After. Token-create replay returns 200
          # metadata WITHOUT secret.
          idempotency_key:,
          # Exact quoted resource-version ETag; an exact intermediary-weakened echo W/"n" is
          # accepted. Wildcard, combined and malformed validators are rejected; stale 412;
          # missing 428. HTTP field names are case-insensitive. Replayed idempotent result
          # is checked first.
          if_match:,
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
