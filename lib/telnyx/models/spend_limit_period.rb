# frozen_string_literal: true

module Telnyx
  module Models
    # `daily` is the current UTC day; `monthly` is the current UTC calendar month.
    module SpendLimitPeriod
      extend Telnyx::Internal::Type::Enum

      DAILY = :daily
      MONTHLY = :monthly

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
