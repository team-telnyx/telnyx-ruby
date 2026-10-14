# frozen_string_literal: true

module Telnyx
  module Resources
    class LlmTokenGateway
      # Manage and report AI Gateway usage.
      class TokenKeys
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenKeyCreateParams} for more details.
        #
        # Create gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. The token secret is returned
        # only on the original create response. A replay returns metadata without the
        # secret. Provisioning is advisory; ready is not a guarantee of inference
        # availability.
        #
        # @overload create(name:, token_group_id:, idempotency_key:, allowed_models: nil, blocked: nil, budget_duration: nil, expires_at: nil, max_budget: nil, max_parallel_requests: nil, required_end_user_id: nil, rpm_limit: nil, token_user_id: nil, tpm_limit: nil, request_options: {})
        #
        # @param name [String] Body param
        #
        # @param token_group_id [String] Body param
        #
        # @param idempotency_key [String] Header param: 24h, scoped by account+method+path. Same key/body returns same out
        #
        # @param allowed_models [Array<String>, nil] Body param
        #
        # @param blocked [Boolean] Body param
        #
        # @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil] Body param
        #
        # @param expires_at [Time, nil] Body param
        #
        # @param max_budget [Float, nil] Body param: USD, decimal precision at most 6 places; parse exactly to integer mi
        #
        # @param max_parallel_requests [Integer, nil] Body param: Optional maximum concurrent reserved/dispatched cache misses across
        #
        # @param required_end_user_id [Boolean] Body param: Require a nonempty caller-asserted end-user ID; not proof of identit
        #
        # @param rpm_limit [Integer, nil] Body param: Omitted or null defaults to the maximum (6000) (on a blocked key, nu
        #
        # @param token_user_id [String, nil] Body param
        #
        # @param tpm_limit [Integer, nil] Body param: Omitted or null defaults to the maximum (10000000) (on a blocked key
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenKeyResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenKeyCreateParams
        def create(params)
          parsed, options = Telnyx::LlmTokenGateway::TokenKeyCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "llm_token_gateway/token_keys",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::LlmTokenGateway::TokenKeyResponse,
            options: options
          )
        end

        # Get gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenKeyResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenKeyRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["llm_token_gateway/token_keys/%1$s", id],
            model: Telnyx::LlmTokenGateway::TokenKeyResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenKeyUpdateParams} for more details.
        #
        # Update gateway token key within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response. Omitted fields are preserved.
        # Null clears max_parallel_requests; null resets budget and rate limits to their
        # maximum. A stale If-Match returns 412.
        #
        # @overload update(id, idempotency_key:, if_match:, allowed_models: nil, blocked: nil, budget_duration: nil, expires_at: nil, max_budget: nil, max_parallel_requests: nil, name: nil, required_end_user_id: nil, rpm_limit: nil, tpm_limit: nil, request_options: {})
        #
        # @param id [String] Path param
        #
        # @param idempotency_key [String] Header param: 24h, scoped by account+method+path. Same key/body returns same out
        #
        # @param if_match [String] Header param: Exact quoted resource-version ETag; an exact intermediary-weakened
        #
        # @param allowed_models [Array<String>, nil] Body param
        #
        # @param blocked [Boolean] Body param
        #
        # @param budget_duration [Symbol, Telnyx::Models::LlmTokenGateway::BudgetDuration, nil] Body param
        #
        # @param expires_at [Time, nil] Body param
        #
        # @param max_budget [Float, nil] Body param: USD, decimal precision at most 6 places; parse exactly to integer mi
        #
        # @param max_parallel_requests [Integer, nil] Body param: Optional maximum concurrent reserved/dispatched cache misses across
        #
        # @param name [String] Body param
        #
        # @param required_end_user_id [Boolean] Body param: Require a nonempty caller-asserted end-user ID; not proof of identit
        #
        # @param rpm_limit [Integer, nil] Body param: Omitted or null defaults to the maximum (6000) (on a blocked key, nu
        #
        # @param tpm_limit [Integer, nil] Body param: Omitted or null defaults to the maximum (10000000) (on a blocked key
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::LlmTokenGateway::TokenKeyResponse]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenKeyUpdateParams
        def update(id, params)
          parsed, options = Telnyx::LlmTokenGateway::TokenKeyUpdateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key", if_match: "if-match"}
          @client.request(
            method: :patch,
            path: ["llm_token_gateway/token_keys/%1$s", id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::LlmTokenGateway::TokenKeyResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenKeyListParams} for more details.
        #
        # List gateway token keys within the authenticated Telnyx account. Foreign and
        # unknown resource IDs return the same 404 response.
        #
        # @overload list(page_number: nil, page_size: nil, page_snapshot: nil, token_group_id: nil, token_user_id: nil, request_options: {})
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        # @param token_group_id [String]
        #
        # @param token_user_id [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::LlmTokenGateway::TokenKey>]
        #
        # @see Telnyx::Models::LlmTokenGateway::TokenKeyListParams
        def list(params = {})
          parsed, options = Telnyx::LlmTokenGateway::TokenKeyListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "llm_token_gateway/token_keys",
            query: query.transform_keys(
              page_number: "page[number]",
              page_size: "page[size]",
              page_snapshot: "page[snapshot]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::LlmTokenGateway::TokenKey,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::LlmTokenGateway::TokenKeyDeleteParams} for more details.
        #
        # Revoke this token key. Acknowledged revocation blocks new admissions with the
        # key; requests already admitted may complete. Historical usage attribution is
        # retained. Other keys in the group are unchanged.
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
        # @see Telnyx::Models::LlmTokenGateway::TokenKeyDeleteParams
        def delete(id, params)
          parsed, options = Telnyx::LlmTokenGateway::TokenKeyDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["llm_token_gateway/token_keys/%1$s", id],
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
