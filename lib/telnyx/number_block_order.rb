# frozen_string_literal: true

module Telnyx
  class NumberBlockOrder < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "number_block_order".freeze
  end
end
