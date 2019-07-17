# frozen_string_literal: true

module Telnyx
  class MessagingShortCode < APIResource
    include Telnyx::APIOperations::Save
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "messaging_short_code".freeze
  end
end
