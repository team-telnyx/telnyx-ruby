# frozen_string_literal: true

module Telnyx
  class WebhookDeliverie < APIResource
    extend APIOperations::List

    OBJECT_NAME = "webhook_deliverie".freeze
  end
end
