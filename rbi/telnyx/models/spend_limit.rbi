# typed: strong

module Telnyx
  module Models
    class SpendLimit < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SpendLimit, Telnyx::Internal::AnyHash) }

      # The active block of the period. `null` when the period is not blocked.
      sig { returns(T.nilable(Telnyx::SpendLimitBlock)) }
      attr_reader :block

      sig { params(block: T.nilable(Telnyx::SpendLimitBlock::OrHash)).void }
      attr_writer :block

      # The product is blocked for the whole account in this period (total limit). An
      # API key's own block appears only in `credential_limits`. Always `false` in write
      # responses; list the limits to read the block state.
      sig { returns(T::Boolean) }
      attr_accessor :blocked

      # The limit in USD that is enforced, as a decimal string. `null` means unlimited.
      sig { returns(T.nilable(String)) }
      attr_accessor :effective_limit_usd

      # The limit set on the account for the product and period, whoever set it. `null`
      # when none is set.
      sig { returns(T.nilable(Telnyx::SpendLimit::Limit)) }
      attr_reader :limit

      sig { params(limit: T.nilable(Telnyx::SpendLimit::Limit::OrHash)).void }
      attr_writer :limit

      # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
      sig { returns(Telnyx::SpendLimitPeriod::TaggedSymbol) }
      attr_accessor :period

      # Exclusive end of the current period, a UTC date.
      sig { returns(Date) }
      attr_accessor :period_end

      # First UTC day of the current period.
      sig { returns(Date) }
      attr_accessor :period_start

      # Product the entry applies to.
      sig { returns(String) }
      attr_accessor :product

      # Display name of the product.
      sig { returns(String) }
      attr_accessor :product_name

      # Identifies the type of the resource.
      sig { returns(String) }
      attr_accessor :record_type

      # Set when `spend_usd` is `null`.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_error

      # Spend in USD so far in the period, as a decimal string. It can lag actual usage
      # by about a minute. `null` when it could not be read.
      sig { returns(T.nilable(String)) }
      attr_accessor :spend_usd

      # In write responses, the API key the write was about; `null` for the total limit.
      # Always `null` in list entries, which describe the total limit.
      sig { returns(T.nilable(String)) }
      attr_accessor :credential_id

      # List responses only. One item per API key limit of the product and period,
      # sorted by `credential_id`, plus every API key that is still blocked. `[]` when
      # there are none.
      sig { returns(T.nilable(T::Array[Telnyx::SpendLimit::CredentialLimit])) }
      attr_reader :credential_limits

      sig do
        params(
          credential_limits:
            T::Array[Telnyx::SpendLimit::CredentialLimit::OrHash]
        ).void
      end
      attr_writer :credential_limits

      # What a create, update or delete did to the period at once. Only present in write
      # responses.
      sig { returns(T.nilable(Telnyx::SpendLimit::Evaluation)) }
      attr_reader :evaluation

      sig { params(evaluation: Telnyx::SpendLimit::Evaluation::OrHash).void }
      attr_writer :evaluation

      # The spend limit, spend and block state of one product and period. The top-level
      # fields describe the total limit of the account; API key limits are nested in
      # `credential_limits`.
      sig do
        params(
          block: T.nilable(Telnyx::SpendLimitBlock::OrHash),
          blocked: T::Boolean,
          effective_limit_usd: T.nilable(String),
          limit: T.nilable(Telnyx::SpendLimit::Limit::OrHash),
          period: Telnyx::SpendLimitPeriod::OrSymbol,
          period_end: Date,
          period_start: Date,
          product: String,
          product_name: String,
          record_type: String,
          spend_error: T.nilable(String),
          spend_usd: T.nilable(String),
          credential_id: T.nilable(String),
          credential_limits:
            T::Array[Telnyx::SpendLimit::CredentialLimit::OrHash],
          evaluation: Telnyx::SpendLimit::Evaluation::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The active block of the period. `null` when the period is not blocked.
        block:,
        # The product is blocked for the whole account in this period (total limit). An
        # API key's own block appears only in `credential_limits`. Always `false` in write
        # responses; list the limits to read the block state.
        blocked:,
        # The limit in USD that is enforced, as a decimal string. `null` means unlimited.
        effective_limit_usd:,
        # The limit set on the account for the product and period, whoever set it. `null`
        # when none is set.
        limit:,
        # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
        period:,
        # Exclusive end of the current period, a UTC date.
        period_end:,
        # First UTC day of the current period.
        period_start:,
        # Product the entry applies to.
        product:,
        # Display name of the product.
        product_name:,
        # Identifies the type of the resource.
        record_type:,
        # Set when `spend_usd` is `null`.
        spend_error:,
        # Spend in USD so far in the period, as a decimal string. It can lag actual usage
        # by about a minute. `null` when it could not be read.
        spend_usd:,
        # In write responses, the API key the write was about; `null` for the total limit.
        # Always `null` in list entries, which describe the total limit.
        credential_id: nil,
        # List responses only. One item per API key limit of the product and period,
        # sorted by `credential_id`, plus every API key that is still blocked. `[]` when
        # there are none.
        credential_limits: nil,
        # What a create, update or delete did to the period at once. Only present in write
        # responses.
        evaluation: nil
      )
      end

      sig do
        override.returns(
          {
            block: T.nilable(Telnyx::SpendLimitBlock),
            blocked: T::Boolean,
            effective_limit_usd: T.nilable(String),
            limit: T.nilable(Telnyx::SpendLimit::Limit),
            period: Telnyx::SpendLimitPeriod::TaggedSymbol,
            period_end: Date,
            period_start: Date,
            product: String,
            product_name: String,
            record_type: String,
            spend_error: T.nilable(String),
            spend_usd: T.nilable(String),
            credential_id: T.nilable(String),
            credential_limits: T::Array[Telnyx::SpendLimit::CredentialLimit],
            evaluation: Telnyx::SpendLimit::Evaluation
          }
        )
      end
      def to_hash
      end

      class Limit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SpendLimit::Limit, Telnyx::Internal::AnyHash)
          end

        # Limit in USD, as a decimal string. `null` when `unlimited` is true.
        sig { returns(T.nilable(String)) }
        attr_accessor :amount

        # `self_service` when a user of the account set it, `operator` when Telnyx support
        # did.
        sig { returns(Telnyx::SpendLimit::Limit::Origin::TaggedSymbol) }
        attr_accessor :origin

        # True when the limit was set to explicitly no cap.
        sig { returns(T::Boolean) }
        attr_accessor :unlimited

        # When the limit was last set or changed.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The limit set on the account for the product and period, whoever set it. `null`
        # when none is set.
        sig do
          params(
            amount: T.nilable(String),
            origin: Telnyx::SpendLimit::Limit::Origin::OrSymbol,
            unlimited: T::Boolean,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Limit in USD, as a decimal string. `null` when `unlimited` is true.
          amount:,
          # `self_service` when a user of the account set it, `operator` when Telnyx support
          # did.
          origin:,
          # True when the limit was set to explicitly no cap.
          unlimited:,
          # When the limit was last set or changed.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              amount: T.nilable(String),
              origin: Telnyx::SpendLimit::Limit::Origin::TaggedSymbol,
              unlimited: T::Boolean,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # `self_service` when a user of the account set it, `operator` when Telnyx support
        # did.
        module Origin
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::SpendLimit::Limit::Origin) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SELF_SERVICE =
            T.let(
              :self_service,
              Telnyx::SpendLimit::Limit::Origin::TaggedSymbol
            )
          OPERATOR =
            T.let(:operator, Telnyx::SpendLimit::Limit::Origin::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::SpendLimit::Limit::Origin::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class CredentialLimit < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SpendLimit::CredentialLimit,
              Telnyx::Internal::AnyHash
            )
          end

        # The active block of the period. `null` when the period is not blocked.
        sig { returns(T.nilable(Telnyx::SpendLimitBlock)) }
        attr_reader :block

        sig { params(block: T.nilable(Telnyx::SpendLimitBlock::OrHash)).void }
        attr_writer :block

        # This API key is blocked for the period.
        sig { returns(T::Boolean) }
        attr_accessor :blocked

        # Identifier of the API key as recorded on usage. Never the key's secret.
        sig { returns(String) }
        attr_accessor :credential_id

        # The limit of one API key. It always has an amount. `null` for an API key that is
        # still blocked after its limit was removed.
        sig { returns(T.nilable(Telnyx::SpendLimit::CredentialLimit::Limit)) }
        attr_reader :limit

        sig do
          params(
            limit: T.nilable(Telnyx::SpendLimit::CredentialLimit::Limit::OrHash)
          ).void
        end
        attr_writer :limit

        # Set when `spend_usd` is `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :spend_error

        # Spend in USD in the period made with exactly this API key, as a decimal string.
        # Usage without an API key identifier, or with another one, counts only toward the
        # total. `null` when it could not be read.
        sig { returns(T.nilable(String)) }
        attr_accessor :spend_usd

        # The API key's limit is above the period's total limit. Only a change by Telnyx
        # support can cause it; the total limit still applies to the whole account. Lower
        # the API key limit or raise the total.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :exceeds_total

        sig { params(exceeds_total: T::Boolean).void }
        attr_writer :exceeds_total

        # The limit, spend and block state of one API key in the product and period.
        sig do
          params(
            block: T.nilable(Telnyx::SpendLimitBlock::OrHash),
            blocked: T::Boolean,
            credential_id: String,
            limit:
              T.nilable(Telnyx::SpendLimit::CredentialLimit::Limit::OrHash),
            spend_error: T.nilable(String),
            spend_usd: T.nilable(String),
            exceeds_total: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The active block of the period. `null` when the period is not blocked.
          block:,
          # This API key is blocked for the period.
          blocked:,
          # Identifier of the API key as recorded on usage. Never the key's secret.
          credential_id:,
          # The limit of one API key. It always has an amount. `null` for an API key that is
          # still blocked after its limit was removed.
          limit:,
          # Set when `spend_usd` is `null`.
          spend_error:,
          # Spend in USD in the period made with exactly this API key, as a decimal string.
          # Usage without an API key identifier, or with another one, counts only toward the
          # total. `null` when it could not be read.
          spend_usd:,
          # The API key's limit is above the period's total limit. Only a change by Telnyx
          # support can cause it; the total limit still applies to the whole account. Lower
          # the API key limit or raise the total.
          exceeds_total: nil
        )
        end

        sig do
          override.returns(
            {
              block: T.nilable(Telnyx::SpendLimitBlock),
              blocked: T::Boolean,
              credential_id: String,
              limit: T.nilable(Telnyx::SpendLimit::CredentialLimit::Limit),
              spend_error: T.nilable(String),
              spend_usd: T.nilable(String),
              exceeds_total: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Limit < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::SpendLimit::CredentialLimit::Limit,
                Telnyx::Internal::AnyHash
              )
            end

          # Limit in USD, as a decimal string.
          sig { returns(String) }
          attr_accessor :amount

          # `self_service` when a user of the account set it, `operator` when Telnyx support
          # did.
          sig do
            returns(
              Telnyx::SpendLimit::CredentialLimit::Limit::Origin::TaggedSymbol
            )
          end
          attr_accessor :origin

          # When the limit was last set or changed.
          sig { returns(Time) }
          attr_accessor :updated_at

          # The limit of one API key. It always has an amount. `null` for an API key that is
          # still blocked after its limit was removed.
          sig do
            params(
              amount: String,
              origin:
                Telnyx::SpendLimit::CredentialLimit::Limit::Origin::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Limit in USD, as a decimal string.
            amount:,
            # `self_service` when a user of the account set it, `operator` when Telnyx support
            # did.
            origin:,
            # When the limit was last set or changed.
            updated_at:
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                origin:
                  Telnyx::SpendLimit::CredentialLimit::Limit::Origin::TaggedSymbol,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          # `self_service` when a user of the account set it, `operator` when Telnyx support
          # did.
          module Origin
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::SpendLimit::CredentialLimit::Limit::Origin
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SELF_SERVICE =
              T.let(
                :self_service,
                Telnyx::SpendLimit::CredentialLimit::Limit::Origin::TaggedSymbol
              )
            OPERATOR =
              T.let(
                :operator,
                Telnyx::SpendLimit::CredentialLimit::Limit::Origin::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::SpendLimit::CredentialLimit::Limit::Origin::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Evaluation < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SpendLimit::Evaluation, Telnyx::Internal::AnyHash)
          end

        # The change blocked the product: the spend was already above the new limit.
        sig { returns(T::Boolean) }
        attr_accessor :blocked_now

        # The spend could not be checked now. The change is saved and applied within a few
        # minutes.
        sig { returns(T::Boolean) }
        attr_accessor :evaluation_deferred

        # The change lifted a block of this period.
        sig { returns(T::Boolean) }
        attr_accessor :released

        # Spend in USD used for the check, as a decimal string. `null` when the spend was
        # not checked.
        sig { returns(T.nilable(String)) }
        attr_accessor :spend_usd

        # The other period has an active block, so the product stays blocked whatever this
        # period's result. For an API key write, the API key's limit in the other period.
        sig { returns(T::Boolean) }
        attr_accessor :still_blocked_other_period

        # A block of this period remains because the spend is still above the new limit.
        sig { returns(T::Boolean) }
        attr_accessor :still_over_limit

        # API key writes only: the account itself remains blocked for the product under a
        # total limit. Absent for total limit writes.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :account_blocked

        sig { params(account_blocked: T::Boolean).void }
        attr_writer :account_blocked

        # Additional information about the result, when there is any.
        sig { returns(T.nilable(String)) }
        attr_reader :note

        sig { params(note: String).void }
        attr_writer :note

        # What a create, update or delete did to the period at once. Only present in write
        # responses.
        sig do
          params(
            blocked_now: T::Boolean,
            evaluation_deferred: T::Boolean,
            released: T::Boolean,
            spend_usd: T.nilable(String),
            still_blocked_other_period: T::Boolean,
            still_over_limit: T::Boolean,
            account_blocked: T::Boolean,
            note: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The change blocked the product: the spend was already above the new limit.
          blocked_now:,
          # The spend could not be checked now. The change is saved and applied within a few
          # minutes.
          evaluation_deferred:,
          # The change lifted a block of this period.
          released:,
          # Spend in USD used for the check, as a decimal string. `null` when the spend was
          # not checked.
          spend_usd:,
          # The other period has an active block, so the product stays blocked whatever this
          # period's result. For an API key write, the API key's limit in the other period.
          still_blocked_other_period:,
          # A block of this period remains because the spend is still above the new limit.
          still_over_limit:,
          # API key writes only: the account itself remains blocked for the product under a
          # total limit. Absent for total limit writes.
          account_blocked: nil,
          # Additional information about the result, when there is any.
          note: nil
        )
        end

        sig do
          override.returns(
            {
              blocked_now: T::Boolean,
              evaluation_deferred: T::Boolean,
              released: T::Boolean,
              spend_usd: T.nilable(String),
              still_blocked_other_period: T::Boolean,
              still_over_limit: T::Boolean,
              account_blocked: T::Boolean,
              note: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
