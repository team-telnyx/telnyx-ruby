# frozen_string_literal: true

module Telnyx
  class CallEvent < APIResource
    extend APIOperations::List

    OBJECT_NAME = "call_event".freeze
  end
end
