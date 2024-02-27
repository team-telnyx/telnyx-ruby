# frozen_string_literal: true

module Telnyx
  class InventoryCoverage < APIResource
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "inventory_coverage".freeze
  end
end
