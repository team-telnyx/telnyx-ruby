# typed: strong

module Telnyx
  module Models
    class SpendLimitBlock < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SpendLimitBlock, Telnyx::Internal::AnyHash)
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
  end
end
