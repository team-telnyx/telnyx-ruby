# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # How often Telnyx refreshes the stored reputation data for this enterprise's
      # registered numbers.
      module ReputationCheckFrequency
        extend Telnyx::Internal::Type::Enum

        BUSINESS_DAILY = :business_daily
        DAILY = :daily
        WEEKLY = :weekly
        BIWEEKLY = :biweekly
        MONTHLY = :monthly
        NEVER = :never

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
