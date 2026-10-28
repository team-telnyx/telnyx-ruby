# typed: strong

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
      sig do
        params(
          body:
            T.any(
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitWithAmount::OrHash,
              Telnyx::SpendLimitCreateParams::Body::CreateSpendLimitUnlimited::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::SpendLimitResponse)
      end
      def create(
        # Send exactly one of `amount` and `unlimited: true`.
        body:,
        request_options: {}
      )
      end

      # Replaces the value of the existing limit for the product and period. Send
      # exactly one of `amount` and `unlimited: true`. The period's spend is checked at
      # once: raising the limit above the spend lifts the period's block
      # (`evaluation.released`), and lowering it below the spend blocks the product
      # (`evaluation.blocked_now`). Returns 404 when no limit is set; create it instead.
      # With the `credential_id` query parameter, the request changes that API key's
      # limit; it needs an `amount`, and it can be at most the period's total limit.
      # Lowering the total limit below the period's highest API key limit is refused.
      sig do
        params(
          product: String,
          body:
            T.any(
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitWithAmount::OrHash,
              Telnyx::SpendLimitUpdateParams::Body::UpdateSpendLimitUnlimited::OrHash
            ),
          credential_id: String,
          period: Telnyx::SpendLimitPeriod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::SpendLimitResponse)
      end
      def update(
        # Path param: Product the limit applies to, as returned in `product` by the list
        # operation.
        product,
        # Body param: Send exactly one of `amount` and `unlimited: true`.
        body:,
        # Query param: Identifier of one API key as recorded on usage, never the key's
        # secret, percent-encoded: the request is then about that key's limit. Absent
        # means the total limit; present but blank is refused.
        credential_id: nil,
        # Query param: Limit period. Defaults to `daily`; send it explicitly.
        period: nil,
        request_options: {}
      )
      end

      # Returns one entry per product and period you can set a limit on, with the limit,
      # the spend so far in the period and whether the product is blocked. An entry
      # without a limit is still listed (`limit: null`). When the spend cannot be read,
      # the entry is returned with `spend_usd: null` and `spend_error` set. The list is
      # not paginated. Each entry also lists the API key limits of its product and
      # period in `credential_limits`, with each key's spend and block. Each API key
      # limit can be at most the total limit; together they may add up to more than it.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::SpendLimitListResponse
        )
      end
      def list(request_options: {})
      end

      # Removes the limit for the product and period. For `inference`, which has no
      # default limit, the product becomes unlimited for the period and the period's
      # block is lifted (`evaluation.released`). The response carries `limit: null` and
      # the `effective_limit_usd` that applies after the removal. Returns 404 when no
      # limit is set. With the `credential_id` query parameter, the request removes that
      # API key's limit for the period and lifts the key's block in that period at once.
      # A block under the key's limit in the other period stays
      # (`evaluation.still_blocked_other_period`). Removing the total limit leaves the
      # API key limits in place.
      sig do
        params(
          product: String,
          credential_id: String,
          period: Telnyx::SpendLimitPeriod::OrSymbol,
          reason: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::SpendLimitResponse)
      end
      def delete(
        # Product the limit applies to, as returned in `product` by the list operation.
        product,
        # Identifier of one API key as recorded on usage, never the key's secret,
        # percent-encoded: the request is then about that key's limit. Absent means the
        # total limit; present but blank is refused.
        credential_id: nil,
        # Limit period. Defaults to `daily`; send it explicitly.
        period: nil,
        # Why the limit is removed, kept for audit. At most 500 characters.
        reason: nil,
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
