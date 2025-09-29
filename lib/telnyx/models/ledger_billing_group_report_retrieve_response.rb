# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::LedgerBillingGroupReports#retrieve
    class LedgerBillingGroupReportRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::LedgerBillingGroupReport, nil]
      optional :data, -> { Telnyx::LedgerBillingGroupReport }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::LedgerBillingGroupReport]
    end
  end
end
