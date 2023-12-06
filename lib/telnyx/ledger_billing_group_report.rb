# frozen_string_literal: true

module Telnyx
  class LedgerBillingGroupReport < APIResource
    extend APIOperations::Create

    OBJECT_NAME = "ledger_billing_group_report".freeze
  end
end
