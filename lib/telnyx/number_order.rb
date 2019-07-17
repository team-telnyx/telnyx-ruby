# frozen_string_literal: true

module Telnyx
  class NumberOrder < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::List
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "number_order".freeze
  end
end
