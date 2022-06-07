# frozen_string_literal: true

module Telnyx
    class NotificationEventCondition < APIResource
      extend Telnyx::APIOperations::List

      OBJECT_NAME = "notificaiton_event_condition".freeze
    end

  end
  