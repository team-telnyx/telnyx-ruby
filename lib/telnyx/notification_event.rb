# frozen_string_literal: true

module Telnyx
    class NotificationEvent < APIResource
      extend Telnyx::APIOperations::List

      OBJECT_NAME = "notification_event".freeze
    end

  end
  