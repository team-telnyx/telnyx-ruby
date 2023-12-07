# frozen_string_literal: true

module Telnyx
  class GlobalIp < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    OBJECT_NAME = "global_ip".freeze
  end
end
