# frozen_string_literal: true

module Telnyx
  class MessagingPhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    extend Telnyx::APIOperations::List

    def initialize(*)
      super
      warn "[DEPRECATION] MessagingPhoneNumber is deprecated, use PhoneNumber instead"
    end

    OBJECT_NAME = "messaging_phone_number".freeze
    def self.resource_path(id = nil)
      return "phone_numbers/#{CGI.escape(id)}/messaging" if id
      "phone_numbers/messaging"
    end
  end
end
