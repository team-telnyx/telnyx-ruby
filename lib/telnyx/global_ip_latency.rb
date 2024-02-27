# frozen_string_literal: true

module Telnyx
  class GlobalIpLatency < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_latency".freeze
  end
end
