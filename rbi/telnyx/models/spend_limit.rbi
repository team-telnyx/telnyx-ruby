# typed: strong

module Telnyx
  module Models
    class SpendLimit < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SpendLimit, Telnyx::Internal::AnyHash) }

      # The active block of the period. `null` when the period is not blocked.
      sig { returns(T.nilable(Telnyx::SpendLimit::Block)) }
      attr_reader :block

      sig { params(block: T.nilable(Telnyx::SpendLimit::Block::OrHash)).void }
      attr_writer :block

      # The product is blocked for this period. Always `false` in write responses; list
      # the limits to read the block state.
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

      # What a create, update or delete did to the period at once. Only present in write
      # responses.
      sig { returns(T.nilable(Telnyx::SpendLimit::Evaluation)) }
      attr_reader :evaluation

      sig { params(evaluation: Telnyx::SpendLimit::Evaluation::OrHash).void }
      attr_writer :evaluation

      # The spend limit, spend and block state of one product and period.
      sig do
        params(
          block: T.nilable(Telnyx::SpendLimit::Block::OrHash),
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
          evaluation: Telnyx::SpendLimit::Evaluation::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The active block of the period. `null` when the period is not blocked.
        block:,
        # The product is blocked for this period. Always `false` in write responses; list
        # the limits to read the block state.
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
        # What a create, update or delete did to the period at once. Only present in write
        # responses.
        evaluation: nil
      )
      end

      sig do
        override.returns(
          {
            block: T.nilable(Telnyx::SpendLimit::Block),
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
            evaluation: Telnyx::SpendLimit::Evaluation
          }
        )
      end
      def to_hash
      end

      class Block < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SpendLimit::Block, Telnyx::Internal::AnyHash)
          end

        # Exclusive end of the block: it is lifted at 00:00 UTC on this date at the
        # latest.
        sig { returns(Date) }
        attr_accessor :blocked_until

        # When the block started.
        sig { returns(Time) }
        attr_accessor :detected_at

        # The limit in USD that the spend went above, as a decimal string.
        sig { returns(String) }
        attr_accessor :limit_usd

        # Spend in USD when the block started, as a decimal string.
        sig { returns(String) }
        attr_accessor :spend_usd

        # The active block of the period. `null` when the period is not blocked.
        sig do
          params(
            blocked_until: Date,
            detected_at: Time,
            limit_usd: String,
            spend_usd: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Exclusive end of the block: it is lifted at 00:00 UTC on this date at the
          # latest.
          blocked_until:,
          # When the block started.
          detected_at:,
          # The limit in USD that the spend went above, as a decimal string.
          limit_usd:,
          # Spend in USD when the block started, as a decimal string.
          spend_usd:
        )
        end

        sig do
          override.returns(
            {
              blocked_until: Date,
              detected_at: Time,
              limit_usd: String,
              spend_usd: String
            }
          )
        end
        def to_hash
        end
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
        # period's result.
        sig { returns(T::Boolean) }
        attr_accessor :still_blocked_other_period

        # A block of this period remains because the spend is still above the new limit.
        sig { returns(T::Boolean) }
        attr_accessor :still_over_limit

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
          # period's result.
          still_blocked_other_period:,
          # A block of this period remains because the spend is still above the new limit.
          still_over_limit:,
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
