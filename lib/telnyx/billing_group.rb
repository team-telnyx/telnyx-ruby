# frozen_string_literal: true

module Telnyx
  class BillingGroup < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "billing_group".freeze
  end
end
