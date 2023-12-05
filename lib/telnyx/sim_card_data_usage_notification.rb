# frozen_string_literal: true

module Telnyx
  class SimCardDataUsageNotification < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "sim_card_data_usage_notification".freeze
  end
end
