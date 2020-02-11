# frozen_string_literal: true

module Telnyx
  class BillingGroup < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete

    OBJECT_NAME = "billing_resource".freeze
  end
end