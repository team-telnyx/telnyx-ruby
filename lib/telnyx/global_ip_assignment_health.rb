# frozen_string_literal: true

module Telnyx
  class GlobalIpAssignmentHealth < APIResource
    extend Telnyx::APIOperations::List
    OBJECT_NAME = "global_ip_assignment_health".freeze
  end
end
