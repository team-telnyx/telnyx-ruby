# frozen_string_literal: true

module Telnyx
  module Models
    class SpendLimitBlock < Telnyx::Internal::Type::BaseModel
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
      #   {Telnyx::Models::SpendLimitBlock} for more details.
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
  end
end
