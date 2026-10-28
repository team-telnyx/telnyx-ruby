# frozen_string_literal: true

module Telnyx
  module Models
    class SpendLimit < Telnyx::Internal::Type::BaseModel
      # @!attribute block
      #   The active block of the period. `null` when the period is not blocked.
      #
      #   @return [Telnyx::Models::SpendLimitBlock, nil]
      required :block, -> { Telnyx::SpendLimitBlock }, nil?: true

      # @!attribute blocked
      #   The product is blocked for the whole account in this period (total limit). An
      #   API key's own block appears only in `credential_limits`. Always `false` in write
      #   responses; list the limits to read the block state.
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

      # @!attribute credential_id
      #   In write responses, the API key the write was about; `null` for the total limit.
      #   Always `null` in list entries, which describe the total limit.
      #
      #   @return [String, nil]
      optional :credential_id, String, nil?: true

      # @!attribute credential_limits
      #   List responses only. One item per API key limit of the product and period,
      #   sorted by `credential_id`, plus every API key that is still blocked. `[]` when
      #   there are none.
      #
      #   @return [Array<Telnyx::Models::SpendLimit::CredentialLimit>, nil]
      optional :credential_limits, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SpendLimit::CredentialLimit] }

      # @!attribute evaluation
      #   What a create, update or delete did to the period at once. Only present in write
      #   responses.
      #
      #   @return [Telnyx::Models::SpendLimit::Evaluation, nil]
      optional :evaluation, -> { Telnyx::SpendLimit::Evaluation }

      # @!method initialize(block:, blocked:, effective_limit_usd:, limit:, period:, period_end:, period_start:, product:, product_name:, record_type:, spend_error:, spend_usd:, credential_id: nil, credential_limits: nil, evaluation: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpendLimit} for more details.
      #
      #   The spend limit, spend and block state of one product and period. The top-level
      #   fields describe the total limit of the account; API key limits are nested in
      #   `credential_limits`.
      #
      #   @param block [Telnyx::Models::SpendLimitBlock, nil] The active block of the period. `null` when the period is not blocked.
      #
      #   @param blocked [Boolean] The product is blocked for the whole account in this period (total limit). An AP
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
      #   @param credential_id [String, nil] In write responses, the API key the write was about; `null` for the total limit.
      #
      #   @param credential_limits [Array<Telnyx::Models::SpendLimit::CredentialLimit>] List responses only. One item per API key limit of the product and period, sorte
      #
      #   @param evaluation [Telnyx::Models::SpendLimit::Evaluation] What a create, update or delete did to the period at once. Only present in write

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

      class CredentialLimit < Telnyx::Internal::Type::BaseModel
        # @!attribute block
        #   The active block of the period. `null` when the period is not blocked.
        #
        #   @return [Telnyx::Models::SpendLimitBlock, nil]
        required :block, -> { Telnyx::SpendLimitBlock }, nil?: true

        # @!attribute blocked
        #   This API key is blocked for the period.
        #
        #   @return [Boolean]
        required :blocked, Telnyx::Internal::Type::Boolean

        # @!attribute credential_id
        #   Identifier of the API key as recorded on usage. Never the key's secret.
        #
        #   @return [String]
        required :credential_id, String

        # @!attribute limit
        #   The limit of one API key. It always has an amount. `null` for an API key that is
        #   still blocked after its limit was removed.
        #
        #   @return [Telnyx::Models::SpendLimit::CredentialLimit::Limit, nil]
        required :limit, -> { Telnyx::SpendLimit::CredentialLimit::Limit }, nil?: true

        # @!attribute spend_error
        #   Set when `spend_usd` is `null`.
        #
        #   @return [String, nil]
        required :spend_error, String, nil?: true

        # @!attribute spend_usd
        #   Spend in USD in the period made with exactly this API key, as a decimal string.
        #   Usage without an API key identifier, or with another one, counts only toward the
        #   total. `null` when it could not be read.
        #
        #   @return [String, nil]
        required :spend_usd, String, nil?: true

        # @!attribute exceeds_total
        #   The API key's limit is above the period's total limit. Only a change by Telnyx
        #   support can cause it; the total limit still applies to the whole account. Lower
        #   the API key limit or raise the total.
        #
        #   @return [Boolean, nil]
        optional :exceeds_total, Telnyx::Internal::Type::Boolean

        # @!method initialize(block:, blocked:, credential_id:, limit:, spend_error:, spend_usd:, exceeds_total: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpendLimit::CredentialLimit} for more details.
        #
        #   The limit, spend and block state of one API key in the product and period.
        #
        #   @param block [Telnyx::Models::SpendLimitBlock, nil] The active block of the period. `null` when the period is not blocked.
        #
        #   @param blocked [Boolean] This API key is blocked for the period.
        #
        #   @param credential_id [String] Identifier of the API key as recorded on usage. Never the key's secret.
        #
        #   @param limit [Telnyx::Models::SpendLimit::CredentialLimit::Limit, nil] The limit of one API key. It always has an amount. `null` for an API key that is
        #
        #   @param spend_error [String, nil] Set when `spend_usd` is `null`.
        #
        #   @param spend_usd [String, nil] Spend in USD in the period made with exactly this API key, as a decimal string.
        #
        #   @param exceeds_total [Boolean] The API key's limit is above the period's total limit. Only a change by Telnyx s

        # @see Telnyx::Models::SpendLimit::CredentialLimit#limit
        class Limit < Telnyx::Internal::Type::BaseModel
          # @!attribute amount
          #   Limit in USD, as a decimal string.
          #
          #   @return [String]
          required :amount, String

          # @!attribute origin
          #   `self_service` when a user of the account set it, `operator` when Telnyx support
          #   did.
          #
          #   @return [Symbol, Telnyx::Models::SpendLimit::CredentialLimit::Limit::Origin]
          required :origin, enum: -> { Telnyx::SpendLimit::CredentialLimit::Limit::Origin }

          # @!attribute updated_at
          #   When the limit was last set or changed.
          #
          #   @return [Time]
          required :updated_at, Time

          # @!method initialize(amount:, origin:, updated_at:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SpendLimit::CredentialLimit::Limit} for more details.
          #
          #   The limit of one API key. It always has an amount. `null` for an API key that is
          #   still blocked after its limit was removed.
          #
          #   @param amount [String] Limit in USD, as a decimal string.
          #
          #   @param origin [Symbol, Telnyx::Models::SpendLimit::CredentialLimit::Limit::Origin] `self_service` when a user of the account set it, `operator` when Telnyx support
          #
          #   @param updated_at [Time] When the limit was last set or changed.

          # `self_service` when a user of the account set it, `operator` when Telnyx support
          # did.
          #
          # @see Telnyx::Models::SpendLimit::CredentialLimit::Limit#origin
          module Origin
            extend Telnyx::Internal::Type::Enum

            SELF_SERVICE = :self_service
            OPERATOR = :operator

            # @!method self.values
            #   @return [Array<Symbol>]
          end
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
        #   period's result. For an API key write, the API key's limit in the other period.
        #
        #   @return [Boolean]
        required :still_blocked_other_period, Telnyx::Internal::Type::Boolean

        # @!attribute still_over_limit
        #   A block of this period remains because the spend is still above the new limit.
        #
        #   @return [Boolean]
        required :still_over_limit, Telnyx::Internal::Type::Boolean

        # @!attribute account_blocked
        #   API key writes only: the account itself remains blocked for the product under a
        #   total limit. Absent for total limit writes.
        #
        #   @return [Boolean, nil]
        optional :account_blocked, Telnyx::Internal::Type::Boolean

        # @!attribute note
        #   Additional information about the result, when there is any.
        #
        #   @return [String, nil]
        optional :note, String

        # @!method initialize(blocked_now:, evaluation_deferred:, released:, spend_usd:, still_blocked_other_period:, still_over_limit:, account_blocked: nil, note: nil)
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
        #   @param account_blocked [Boolean] API key writes only: the account itself remains blocked for the product under a
        #
        #   @param note [String] Additional information about the result, when there is any.
      end
    end
  end
end
