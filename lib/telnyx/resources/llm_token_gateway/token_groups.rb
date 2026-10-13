# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class TokenGroups
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenGroupCreateParams} for more details.
        #
        # Create gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        #
        # @overload create(allowed_models:, name:, idempotency_key:, blocked: nil, budget_duration: nil, cache_ttl: nil, fallbacks: nil, guardrails: nil, max_budget: nil, max_parallel_requests: nil, provider_key_ids: nil, retries: nil, rpm_limit: nil, tpm_limit: nil, request_options: {})
        #
        # @param allowed_models [Array<String>] Body param
        #
        # @param name [String] Body param
        #
        # @param idempotency_key [String] Header param: 24h, scoped by account+method+path. Same key/body returns same out
        #
        # @param blocked [Boolean] Body param
        #
        # @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil] Body param
        #
        # @param cache_ttl [Integer, nil] Body param
        #
        # @param fallbacks [Hash{Symbol=>Array<String>}, nil] Body param: Per-group model fallbacks: primary alias -> ordered list of 1..3 oth
        #
        # @param guardrails [Telnyx::Models::LlmTokenGateway::TokenGroupCreateParams::Guardrails, nil] Body param: Per-group guardrail policy. Missing actions default to ignore. profi
        #
        # @param max_budget [Float, nil] Body param: USD, decimal precision at most 6 places; parse exactly to integer mi
        #
        # @param max_parallel_requests [Integer, nil] Body param: Optional maximum concurrent reserved/dispatched cache misses across
        #
        # @param provider_key_ids [Array<String>] Body param
        #
        # @param retries [Telnyx::Models::LlmTokenGateway::TokenGroupCreateParams::Retries, nil] Body param: Per-group same-route retries. max_attempts counts the first try of e
        #
        # @param rpm_limit [Integer, nil] Body param
        #
        # @param tpm_limit [Integer, nil] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenGroupResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenGroupCreateParams
        def create(params)
          parsed, options = Telnyx::LlmTokenGateway::TokenGroupCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "llm_token_gateway/token_groups",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::LlmTokenGateway::TokenGroupResponse,
            options: options
          )
        end

        # Get gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenGroupResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenGroupRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["llm_token_gateway/token_groups/%1$s", id],
            model: Telnyx::LlmTokenGateway::TokenGroupResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams} for more details.
        #
        # Update gateway token group within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. Omitted fields are preserved.
        # Null clears the optional concurrency, fallback and retry settings. A stale
        # If-Match returns 412; read the resource again before updating.
        #
        # @overload update(id, idempotency_key:, if_match:, allowed_models: nil, blocked: nil, budget_duration: nil, cache_ttl: nil, fallbacks: nil, guardrails: nil, max_budget: nil, max_parallel_requests: nil, name: nil, provider_key_ids: nil, retries: nil, rpm_limit: nil, tpm_limit: nil, request_options: {})
        #
        # @param id [String] Path param
        #
        # @param idempotency_key [String] Header param: 24h, scoped by account+method+path. Same key/body returns same out
        #
        # @param if_match [String] Header param: Exact quoted resource-version ETag; an exact intermediary-weakened
        #
        # @param allowed_models [Array<String>] Body param
        #
        # @param blocked [Boolean] Body param
        #
        # @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil] Body param
        #
        # @param cache_ttl [Integer, nil] Body param
        #
        # @param fallbacks [Hash{Symbol=>Array<String>}, nil] Body param: Per-group model fallbacks: primary alias -> ordered list of 1..3 oth
        #
        # @param guardrails [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Guardrails, nil] Body param: Per-group guardrail policy. Missing actions default to ignore. profi
        #
        # @param max_budget [Float, nil] Body param: USD, decimal precision at most 6 places; parse exactly to integer mi
        #
        # @param max_parallel_requests [Integer, nil] Body param: Optional maximum concurrent reserved/dispatched cache misses across
        #
        # @param name [String] Body param
        #
        # @param provider_key_ids [Array<String>] Body param
        #
        # @param retries [Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams::Retries, nil] Body param: Per-group same-route retries. max_attempts counts the first try of e
        #
        # @param rpm_limit [Integer, nil] Body param
        #
        # @param tpm_limit [Integer, nil] Body param
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenGroupResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenGroupUpdateParams
        def update(id, params)
          parsed, options = Telnyx::LlmTokenGateway::TokenGroupUpdateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key", if_match: "if-match"}
          @client.request(
            method: :patch,
            path: ["llm_token_gateway/token_groups/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::LlmTokenGateway::TokenGroupResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenGroupListParams} for more details.
        #
        # List gateway token groups within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        #
        # @overload list(page_number: nil, page_size: nil, page_snapshot: nil, request_options: {})
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::LlmTokenGateway::TokenGroup>]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenGroupListParams
        def list(params = {})
          parsed, options = Telnyx::LlmTokenGateway::TokenGroupListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/token_groups",
            query: query.transform_keys(
              page_number: "page[number]",
              page_size: "page[size]",
              page_snapshot: "page[snapshot]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::LlmTokenGateway::TokenGroup,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenGroupDeleteParams} for more details.
        #
        # Revoke resource and its keys atomically; retain historical attribution, never
        # detach into an ungoverned service key.
        #
        # @overload delete(id, idempotency_key:, if_match:, request_options: {})
        #
        # @param id [String]
        #
        # @param idempotency_key [String] 24h, scoped by account+method+path. Same key/body returns same outcome; changed
        #
        # @param if_match [String] Exact quoted resource-version ETag; an exact intermediary-weakened echo W/"n" is
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenGroupDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::LlmTokenGateway::TokenGroupDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["llm_token_gateway/token_groups/%1$s", id],
            headers: parsed.transform_keys(idempotency_key: "idempotency-key", if_match: "if-match"),
            model: NilClass,
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
