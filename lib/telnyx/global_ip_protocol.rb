# frozen_string_literal: true

module Telnyx
  class GlobalIpProtocol < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_protocol".freeze
  end
end
