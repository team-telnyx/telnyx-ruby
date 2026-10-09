# frozen_string_literal: true

module Telnyx
  module Models
    class SpendLimit < Telnyx::Internal::Type::BaseModel
      # @!attribute block
      #   The active block of the period. `null` when the period is not blocked.
      #
      #   @return [Telnyx::Models::SpendLimit::Block, nil]
      required :block, -> { Telnyx::SpendLimit::Block }, nil?: true

      # @!attribute blocked
      #   The product is blocked for this period. Always `false` in write responses; list
      #   the limits to read the block state.
      #
      #   @return [Boolean]
      required :blocked, Telnyx::Internal::Type::Boolean

      # @!attribute effective_limit_usd
      #   The limit in USD that is enforced, as a decimal string. `null` means unlimited.
      #
      #   @return [String, nil]
      required :effective_limit_usd, String, nil?: true

      # @!attribute limit
      #   The limit set on the account for the product and period, whoever set it. `null`
      #   when none is set.
      #
      #   @return [Telnyx::Models::SpendLimit::Limit, nil]
      required :limit, -> { Telnyx::SpendLimit::Limit }, nil?: true

      # @!attribute period
      #   `daily` is the current UTC day; `monthly` is the current UTC calendar month.
      #
      #   @return [Symbol, Telnyx::Models::SpendLimitPeriod]
      required :period, enum: -> { Telnyx::SpendLimitPeriod }

      # @!attribute period_end
      #   Exclusive end of the current period, a UTC date.
      #
      #   @return [Date]
      required :period_end, Date

      # @!attribute period_start
      #   First UTC day of the current period.
      #
      #   @return [Date]
      required :period_start, Date

      # @!attribute product
      #   Product the entry applies to.
      #
      #   @return [String]
      required :product, String

      # @!attribute product_name
      #   Display name of the product.
      #
      #   @return [String]
      required :product_name, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String]
      required :record_type, String

      # @!attribute spend_error
      #   Set when `spend_usd` is `null`.
      #
      #   @return [String, nil]
      required :spend_error, String, nil?: true

      # @!attribute spend_usd
      #   Spend in USD so far in the period, as a decimal string. It can lag actual usage
      #   by about a minute. `null` when it could not be read.
      #
      #   @return [String, nil]
      required :spend_usd, String, nil?: true

      # @!attribute evaluation
      #   What a create, update or delete did to the period at once. Only present in write
      #   responses.
      #
      #   @return [Telnyx::Models::SpendLimit::Evaluation, nil]
      optional :evaluation, -> { Telnyx::SpendLimit::Evaluation }

      # @!method initialize(block:, blocked:, effective_limit_usd:, limit:, period:, period_end:, period_start:, product:, product_name:, record_type:, spend_error:, spend_usd:, evaluation: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpendLimit} for more details.
      #
      #   The spend limit, spend and block state of one product and period.
      #
      #   @param block [Telnyx::Models::SpendLimit::Block, nil] The active block of the period. `null` when the period is not blocked.
      #
      #   @param blocked [Boolean] The product is blocked for this period. Always `false` in write responses; list
      #
      #   @param effective_limit_usd [String, nil] The limit in USD that is enforced, as a decimal string. `null` means unlimited.
      #
      #   @param limit [Telnyx::Models::SpendLimit::Limit, nil] The limit set on the account for the product and period, whoever set it. `null`
      #
      #   @param period [Symbol, Telnyx::Models::SpendLimitPeriod] `daily` is the current UTC day; `monthly` is the current UTC calendar month.
      #
      #   @param period_end [Date] Exclusive end of the current period, a UTC date.
      #
      #   @param period_start [Date] First UTC day of the current period.
      #
      #   @param product [String] Product the entry applies to.
      #
      #   @param product_name [String] Display name of the product.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param spend_error [String, nil] Set when `spend_usd` is `null`.
      #
      #   @param spend_usd [String, nil] Spend in USD so far in the period, as a decimal string. It can lag actual usage
      #
      #   @param evaluation [Telnyx::Models::SpendLimit::Evaluation] What a create, update or delete did to the period at once. Only present in write

      # @see Telnyx::Models::SpendLimit#block
      class Block < Telnyx::Internal::Type::BaseModel
        # @!attribute blocked_until
        #   Exclusive end of the block: it is lifted at 00:00 UTC on this date at the
        #   latest.
        #
        #   @return [Date]
        required :blocked_until, Date

        # @!attribute detected_at
        #   When the block started.
        #
        #   @return [Time]
        required :detected_at, Time

        # @!attribute limit_usd
        #   The limit in USD that the spend went above, as a decimal string.
        #
        #   @return [String]
        required :limit_usd, String

        # @!attribute spend_usd
        #   Spend in USD when the block started, as a decimal string.
        #
        #   @return [String]
        required :spend_usd, String

        # @!method initialize(blocked_until:, detected_at:, limit_usd:, spend_usd:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpendLimit::Block} for more details.
        #
        #   The active block of the period. `null` when the period is not blocked.
        #
        #   @param blocked_until [Date] Exclusive end of the block: it is lifted at 00:00 UTC on this date at the latest
        #
        #   @param detected_at [Time] When the block started.
        #
        #   @param limit_usd [String] The limit in USD that the spend went above, as a decimal string.
        #
        #   @param spend_usd [String] Spend in USD when the block started, as a decimal string.
      end

      # @see Telnyx::Models::SpendLimit#limit
      class Limit < Telnyx::Internal::Type::BaseModel
        # @!attribute amount
        #   Limit in USD, as a decimal string. `null` when `unlimited` is true.
        #
        #   @return [String, nil]
        required :amount, String, nil?: true

        # @!attribute origin
        #   `self_service` when a user of the account set it, `operator` when Telnyx support
        #   did.
        #
        #   @return [Symbol, Telnyx::Models::SpendLimit::Limit::Origin]
        required :origin, enum: -> { Telnyx::SpendLimit::Limit::Origin }

        # @!attribute unlimited
        #   True when the limit was set to explicitly no cap.
        #
        #   @return [Boolean]
        required :unlimited, Telnyx::Internal::Type::Boolean

        # @!attribute updated_at
        #   When the limit was last set or changed.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!method initialize(amount:, origin:, unlimited:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpendLimit::Limit} for more details.
        #
        #   The limit set on the account for the product and period, whoever set it. `null`
        #   when none is set.
        #
        #   @param amount [String, nil] Limit in USD, as a decimal string. `null` when `unlimited` is true.
        #
        #   @param origin [Symbol, Telnyx::Models::SpendLimit::Limit::Origin] `self_service` when a user of the account set it, `operator` when Telnyx support
        #
        #   @param unlimited [Boolean] True when the limit was set to explicitly no cap.
        #
        #   @param updated_at [Time] When the limit was last set or changed.

        # `self_service` when a user of the account set it, `operator` when Telnyx support
        # did.
        #
        # @see Telnyx::Models::SpendLimit::Limit#origin
        module Origin
          extend Telnyx::Internal::Type::Enum

          SELF_SERVICE = :self_service
          OPERATOR = :operator

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::SpendLimit#evaluation
      class Evaluation < Telnyx::Internal::Type::BaseModel
        # @!attribute blocked_now
        #   The change blocked the product: the spend was already above the new limit.
        #
        #   @return [Boolean]
        required :blocked_now, Telnyx::Internal::Type::Boolean

        # @!attribute evaluation_deferred
        #   The spend could not be checked now. The change is saved and applied within a few
        #   minutes.
        #
        #   @return [Boolean]
        required :evaluation_deferred, Telnyx::Internal::Type::Boolean

        # @!attribute released
        #   The change lifted a block of this period.
        #
        #   @return [Boolean]
        required :released, Telnyx::Internal::Type::Boolean

        # @!attribute spend_usd
        #   Spend in USD used for the check, as a decimal string. `null` when the spend was
        #   not checked.
        #
        #   @return [String, nil]
        required :spend_usd, String, nil?: true

        # @!attribute still_blocked_other_period
        #   The other period has an active block, so the product stays blocked whatever this
        #   period's result.
        #
        #   @return [Boolean]
        required :still_blocked_other_period, Telnyx::Internal::Type::Boolean

        # @!attribute still_over_limit
        #   A block of this period remains because the spend is still above the new limit.
        #
        #   @return [Boolean]
        required :still_over_limit, Telnyx::Internal::Type::Boolean

        # @!attribute note
        #   Additional information about the result, when there is any.
        #
        #   @return [String, nil]
        optional :note, String

        # @!method initialize(blocked_now:, evaluation_deferred:, released:, spend_usd:, still_blocked_other_period:, still_over_limit:, note: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpendLimit::Evaluation} for more details.
        #
        #   What a create, update or delete did to the period at once. Only present in write
        #   responses.
        #
        #   @param blocked_now [Boolean] The change blocked the product: the spend was already above the new limit.
        #
        #   @param evaluation_deferred [Boolean] The spend could not be checked now. The change is saved and applied within a few
        #
        #   @param released [Boolean] The change lifted a block of this period.
        #
        #   @param spend_usd [String, nil] Spend in USD used for the check, as a decimal string. `null` when the spend was
        #
        #   @param still_blocked_other_period [Boolean] The other period has an active block, so the product stays blocked whatever this
        #
        #   @param still_over_limit [Boolean] A block of this period remains because the spend is still above the new limit.
        #
        #   @param note [String] Additional information about the result, when there is any.
      end
    end
  end
end
