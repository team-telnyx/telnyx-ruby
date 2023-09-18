# frozen_string_literal: true

module Telnyx
  class MessageNumberPool < APIResource
    extend Telnyx::APIOperations::Create

    RESOURCE_PATH = "messages/number_pool"
  end
end
