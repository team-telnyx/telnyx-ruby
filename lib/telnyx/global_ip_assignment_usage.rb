# frozen_string_literal: true

module Telnyx
  class GlobalIpAssignmentUsage < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_assignment_usage".freeze
  end
end
