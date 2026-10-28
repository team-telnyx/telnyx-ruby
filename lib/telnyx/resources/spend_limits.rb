# frozen_string_literal: true

module Telnyx
  module Resources
    # Daily and monthly spend limits per product. A limit applies to the organization
    # of the authenticated user, or to the user's own account when they belong to no
    # organization; every user of the organization sees and changes the same limits.
    #
    # - **Periods.** `daily` covers the current UTC day and `monthly` the current UTC
    #   calendar month. The two limits are independent: you can set either, both or
    #   neither.
    # - **Blocking.** When spend in a period goes above the limit (strictly greater),
    #   the product is blocked until the period ends: 00:00 UTC the next day for
    #   `daily`, 00:00 UTC on the 1st of the next month for `monthly`. A block appears
    #   within about 2 minutes (daily) or 10 minutes (monthly) of the spend being
    #   recorded.
    # - **Changes apply immediately.** Creating, updating or deleting a limit checks
    #   the period's spend in the same request: raising the limit above the spend, or
    #   removing it, lifts that period's block, and lowering it below the spend blocks
    #   the product at once. The `evaluation` object in the response says what
    #   happened.
    # - **Supported products.** Today only `inference` supports spend limits. A
    #   blocked account gets HTTP 403 with the error title
    #   `Inference spend limit reached` (code `10039`) on new billable chat
    #   completions, Responses, Anthropic Messages and classification requests;
    #   requests already running finish normally. Take the list of products from the
    #   list operation.
    # - **API key limits.** For `inference`, a limit can also apply to one API key,
    #   named by `credential_id`: the key's identifier as recorded on usage, never its
    #   secret. When the key's spend goes above its own limit, only that key is
    #   blocked, with the error title `API key spend limit reached` (code `10039`);
    #   the account's other keys keep working. The API key limits of a period cannot
    #   add up to more than the total limit when the total has an amount. Only
    #   language-model requests authenticated with an API key count toward its limit.
    # - **Limits set by Telnyx.** Telnyx support can also set a limit on your account.
    #   It is listed with `origin: operator` and you can update or delete it like your
    #   own.
    class SpendLimits
      # Sets a limit for a product and period that has none. Send exactly one of
      # `amount` and `unlimited: true`. The period's spend is checked at once: if it is
      # already above the new limit, the product is blocked immediately
      # (`evaluation.blocked_now`). Returns 409 when a limit already exists for the
      # product and period; update it instead. With `credential_id`, the limit applies
      # to that API key only: it needs an `amount`, and the period's API key limits
      # cannot add up to more than the total limit when the total has an amount.
      #
      # @overload create(body:, request_options: {})
      #
      # @param body [Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount, Telnyx::Models::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited] Send exactly one of `amount` and `unlimited: true`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SpendLimitResponse]
      #
      # @see Telnyx::Models::SpendLimitCreateParams
      def create(params)
        parsed, options = Telnyx::SpendLimitCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "spend_limits",
          body: parsed[:body],
          model: Telnyx::SpendLimitResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SpendLimitUpdateParams} for more details.
      #
      # Replaces the value of the existing limit for the product and period. Send
      # exactly one of `amount` and `unlimited: true`. The period's spend is checked at
      # once: raising the limit above the spend lifts the period's block
      # (`evaluation.released`), and lowering it below the spend blocks the product
      # (`evaluation.blocked_now`). Returns 404 when no limit is set; create it instead.
      # With the `credential_id` query parameter, the request changes that API key's
      # limit; it needs an `amount`, and it can be at most the period's total limit.
      # Lowering the total limit below the period's highest API key limit is refused.
      #
      # @overload update(product, body:, credential_id: nil, period: nil, request_options: {})
      #
      # @param product [String] Path param: Product the limit applies to, as returned in `product` by the list o
      #
      # @param body [Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount, Telnyx::Models::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited] Body param: Send exactly one of `amount` and `unlimited: true`.
      #
      # @param credential_id [String] Query param: Identifier of one API key as recorded on usage, never the key's sec
      #
      # @param period [Symbol, Telnyx::Models::SpendLimitPeriod] Query param: Limit period. Defaults to `daily`; send it explicitly.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SpendLimitResponse]
      #
      # @see Telnyx::Models::SpendLimitUpdateParams
      def update(product, params)
        parsed, options = Telnyx::SpendLimitUpdateParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed.except(:body))
        @client.request(
          method: :patch,
          path: ["spend_limits/%1$s", product],
          query: query,
          body: parsed[:body],
          model: Telnyx::SpendLimitResponse,
          options: options
        )
      end

      # Returns one entry per product and period you can set a limit on, with the limit,
      # the spend so far in the period and whether the product is blocked. An entry
      # without a limit is still listed (`limit: null`). When the spend cannot be read,
      # the entry is returned with `spend_usd: null` and `spend_error` set. The list is
      # not paginated. Each entry also lists the API key limits of its product and
      # period in `credential_limits`, with each key's spend and block. Each API key
      # limit can be at most the total limit; together they may add up to more than it.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SpendLimitListResponse]
      #
      # @see Telnyx::Models::SpendLimitListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "spend_limits",
          model: Telnyx::Models::SpendLimitListResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SpendLimitDeleteParams} for more details.
      #
      # Removes the limit for the product and period. For `inference`, which has no
      # default limit, the product becomes unlimited for the period and the period's
      # block is lifted (`evaluation.released`). The response carries `limit: null` and
      # the `effective_limit_usd` that applies after the removal. Returns 404 when no
      # limit is set. With the `credential_id` query parameter, the request removes that
      # API key's limit for the period and lifts the key's block in that period at once.
      # A block under the key's limit in the other period stays
      # (`evaluation.still_blocked_other_period`). Removing the total limit leaves the
      # API key limits in place.
      #
      # @overload delete(product, credential_id: nil, period: nil, reason: nil, request_options: {})
      #
      # @param product [String] Product the limit applies to, as returned in `product` by the list operation.
      #
      # @param credential_id [String] Identifier of one API key as recorded on usage, never the key's secret, percent-
      #
      # @param period [Symbol, Telnyx::Models::SpendLimitPeriod] Limit period. Defaults to `daily`; send it explicitly.
      #
      # @param reason [String] Why the limit is removed, kept for audit. At most 500 characters.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SpendLimitResponse]
      #
      # @see Telnyx::Models::SpendLimitDeleteParams
      def delete(product, params = {})
        parsed, options = Telnyx::SpendLimitDeleteParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :delete,
          path: ["spend_limits/%1$s", product],
          query: query,
          model: Telnyx::SpendLimitResponse,
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
