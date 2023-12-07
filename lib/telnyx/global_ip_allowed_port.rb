# frozen_string_literal: true

module Telnyx
  class GlobalIpAllowedPort < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_allowed_port".freeze
  end
end
