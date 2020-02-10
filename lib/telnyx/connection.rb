# frozen_string_literal: true

module Telnyx
  class Connection < APIResource
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "connection".freeze
  end
end
