# typed: strong

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class TokenGroups
        # Create gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        sig do
          params(
            allowed_models: T::Array[String],
            name: String,
            idempotency_key: String,
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            cache_ttl: T.nilable(Integer),
            fallbacks: T.nilable(T::Hash[Symbol, T::Array[String]]),
            guardrails:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupCreateParams::Guardrails::OrHash
              ),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            provider_key_ids: T::Array[String],
            retries:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupCreateParams::Retries::OrHash
              ),
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenGroupResponse)
        end
        def create(
          # Body param
          allowed_models:,
          # Body param
          name:,
          # Header param: 24h, scoped by account+method+path. Same key/body returns same
          # outcome; changed body 409; in-progress 409 with Retry-After. Token-create replay
          # returns 200 metadata WITHOUT secret.
          idempotency_key:,
          # Body param
          blocked: nil,
          # Body param
          budget_duration: nil,
          # Body param
          cache_ttl: nil,
          # Body param: Per-group model fallbacks: primary alias -> ordered list of 1..3
          # other aliases. Every key and listed alias must be in allowed_models (a PATCH
          # removing a referenced alias is 400); a chain never lists its own key; wildcards
          # are rejected. Chains are one level deep (a step's own chain is not expanded).
          # Fallback is attempted only for managed routes, only before the first provider
          # event is forwarded, and only to steps the key may use; each attempt is reserved
          # and recorded. {} and null both disable fallbacks.
          fallbacks: nil,
          # Body param: Per-group guardrail policy. Missing actions default to ignore.
          # profiles may be listed with both dlp actions ignore (staged, inactive) but a
          # non-ignore dlp action requires at least one profile. streaming defaults to
          # buffered when any response action is block and passthrough otherwise;
          # passthrough with a response block is 400. Findings are codes and counts only;
          # content is never stored. The stored form is echoed back canonicalised (all
          # actions explicit, profiles sorted); {} is stored as an all-ignore policy, null
          # disables.
          guardrails: nil,
          # Body param: USD, decimal precision at most 6 places; parse exactly to integer
          # micro-USD, never binary float accounting.
          max_budget: nil,
          # Body param: Optional maximum concurrent reserved/dispatched cache misses across
          # replicas. Null means no concurrency cap. Cache hits do not consume slots;
          # unknown usage retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Body param
          provider_key_ids: nil,
          # Body param: Per-group same-route retries. max_attempts counts the first try of
          # each step (the primary and each fallback) and is the ceiling for the
          # x-ltg-max-attempts request header. A step is retried only when its attempt
          # definitely did no provider work (connection failure before dispatch, or 429/529)
          # before the first provider event; an uncertain failure (timeout,
          # 408/500/502/503/504) moves to the next fallback step instead. max_attempts x
          # (1 + the longest fallback chain) must not exceed 8, else 400. The n-th retry
          # waits retry_delay_ms (constant), retry_delay_ms*n (linear) or
          # retry_delay_ms*2^(n-1) (exponential), at most 5 s and never past the request
          # deadline, then jittered uniformly down to half that value so concurrent retries
          # spread out; a provider Retry-After of at most 5 s is honoured and a longer one
          # moves to the next step. request_timeout_ms applies to streaming requests only:
          # it bounds each attempt's time to its first provider event and never applies
          # after it. Non-stream requests keep the per-attempt hop and idle bounds (their
          # headers arrive only with the finished completion). retry_delay_ms and backoff
          # are floors for the request knobs. Each planned attempt is reserved (at most 8
          # per request); unused reservation is released at settlement. Managed routes only.
          # The stored form is echoed back with defaults filled in; null disables retries.
          retries: nil,
          # Body param
          rpm_limit: nil,
          # Body param
          tpm_limit: nil,
          request_options: {}
        )
        end

        # Get gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenGroupResponse)
        end
        def retrieve(id, request_options: {})
        end

        # Update gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. Omitted fields are preserved.
        # Null clears the optional concurrency, fallback and retry settings. A stale
        # If-Match returns 412; read the resource again before updating.
        sig do
          params(
            id: String,
            idempotency_key: String,
            if_match: String,
            allowed_models: T::Array[String],
            blocked: T::Boolean,
            budget_duration:
              T.nilable(Telnyx::LlmTokenGateway::BudgetDuration::OrSymbol),
            cache_ttl: T.nilable(Integer),
            fallbacks: T.nilable(T::Hash[Symbol, T::Array[String]]),
            guardrails:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Guardrails::OrHash
              ),
            max_budget: T.nilable(Float),
            max_parallel_requests: T.nilable(Integer),
            name: String,
            provider_key_ids: T::Array[String],
            retries:
              T.nilable(
                Telnyx::LlmTokenGateway::TokenGroupUpdateParams::Retries::OrHash
              ),
            rpm_limit: T.nilable(Integer),
            tpm_limit: T.nilable(Integer),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::LlmTokenGateway::TokenGroupResponse)
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
          cache_ttl: nil,
          # Body param: Per-group model fallbacks: primary alias -> ordered list of 1..3
          # other aliases. Every key and listed alias must be in allowed_models (a PATCH
          # removing a referenced alias is 400); a chain never lists its own key; wildcards
          # are rejected. Chains are one level deep (a step's own chain is not expanded).
          # Fallback is attempted only for managed routes, only before the first provider
          # event is forwarded, and only to steps the key may use; each attempt is reserved
          # and recorded. {} and null both disable fallbacks.
          fallbacks: nil,
          # Body param: Per-group guardrail policy. Missing actions default to ignore.
          # profiles may be listed with both dlp actions ignore (staged, inactive) but a
          # non-ignore dlp action requires at least one profile. streaming defaults to
          # buffered when any response action is block and passthrough otherwise;
          # passthrough with a response block is 400. Findings are codes and counts only;
          # content is never stored. The stored form is echoed back canonicalised (all
          # actions explicit, profiles sorted); {} is stored as an all-ignore policy, null
          # disables.
          guardrails: nil,
          # Body param: USD, decimal precision at most 6 places; parse exactly to integer
          # micro-USD, never binary float accounting.
          max_budget: nil,
          # Body param: Optional maximum concurrent reserved/dispatched cache misses across
          # replicas. Null means no concurrency cap. Cache hits do not consume slots;
          # unknown usage retains its budget hold without a slot.
          max_parallel_requests: nil,
          # Body param
          name: nil,
          # Body param
          provider_key_ids: nil,
          # Body param: Per-group same-route retries. max_attempts counts the first try of
          # each step (the primary and each fallback) and is the ceiling for the
          # x-ltg-max-attempts request header. A step is retried only when its attempt
          # definitely did no provider work (connection failure before dispatch, or 429/529)
          # before the first provider event; an uncertain failure (timeout,
          # 408/500/502/503/504) moves to the next fallback step instead. max_attempts x
          # (1 + the longest fallback chain) must not exceed 8, else 400. The n-th retry
          # waits retry_delay_ms (constant), retry_delay_ms*n (linear) or
          # retry_delay_ms*2^(n-1) (exponential), at most 5 s and never past the request
          # deadline, then jittered uniformly down to half that value so concurrent retries
          # spread out; a provider Retry-After of at most 5 s is honoured and a longer one
          # moves to the next step. request_timeout_ms applies to streaming requests only:
          # it bounds each attempt's time to its first provider event and never applies
          # after it. Non-stream requests keep the per-attempt hop and idle bounds (their
          # headers arrive only with the finished completion). retry_delay_ms and backoff
          # are floors for the request knobs. Each planned attempt is reserved (at most 8
          # per request); unused reservation is released at settlement. Managed routes only.
          # The stored form is echoed back with defaults filled in; null disables retries.
          retries: nil,
          # Body param
          rpm_limit: nil,
          # Body param
          tpm_limit: nil,
          request_options: {}
        )
        end

        # List gateway token groups within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::LlmTokenGateway::TokenGroup
            ]
          )
        end
        def list(
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          request_options: {}
        )
        end

        # Revoke resource and its keys atomically; retain historical attribution, never
        # detach into an ungoverned service key.
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
