# frozen_string_literal: true

module Telnyx
  class Event < APIResource
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "event".freeze
  end
end
