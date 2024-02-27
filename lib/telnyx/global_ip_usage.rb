# frozen_string_literal: true

module Telnyx
  class GlobalIpUsage < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_usage".freeze
  end
end
