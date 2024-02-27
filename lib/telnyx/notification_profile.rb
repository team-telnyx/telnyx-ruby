# frozen_string_literal: true

module Telnyx
  class NotificationProfile < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "notification_profile".freeze
  end
end
