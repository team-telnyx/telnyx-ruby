# frozen_string_literal: true

module Telnyx
  class AvailablePhoneNumber < APIResource
    extend Telnyx::APIOperations::List
    def self.list(filters = {}, opts = {})
      return super(filters, opts) if filters.keys == ['filter']

      filters = { filter: filters }
      super filters, opts
    end

    OBJECT_NAME = "available_phone_number".freeze
  end
end
