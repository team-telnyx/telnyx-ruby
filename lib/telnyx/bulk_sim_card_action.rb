# frozen_string_literal: true

module Telnyx
  class BulkSimCardAction < APIResource
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "bulk_sim_card_action".freeze
  end
end
