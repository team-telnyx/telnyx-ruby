# frozen_string_literal: true

module Telnyx
  class Network < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "network".freeze
  end
end
