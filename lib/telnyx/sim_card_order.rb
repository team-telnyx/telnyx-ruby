# frozen_string_literal: true

module Telnyx
  class SimCardOrder < APIResource
    extend APIOperations::List
    extend APIOperations::Create

    OBJECT_NAME = "sim_card_order".freeze
  end
end
