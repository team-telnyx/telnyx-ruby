# frozen_string_literal: true

module Telnyx
  class AlphanumericSenderId < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "alphanumeric_sender_id".freeze
  end
end
