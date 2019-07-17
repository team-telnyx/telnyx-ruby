# frozen_string_literal: true

module Telnyx
  class MessagingSenderId < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "messaging_sender_id".freeze
  end
end
