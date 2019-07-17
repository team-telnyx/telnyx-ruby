# frozen_string_literal: true

module Telnyx
  class MessagingPhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "messaging_phone_number".freeze
  end
end
