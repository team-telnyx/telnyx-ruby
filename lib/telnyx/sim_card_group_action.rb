# frozen_string_literal: true

module Telnyx
  class SimCardGroupAction < APIResource
    extend APIOperations::List
    OBJECT_NAME = "sim_card_group_action".freeze
  end
end
