# frozen_string_literal: true

module Telnyx
  class Message < APIResource
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "message".freeze
  end
end
