# frozen_string_literal: true

module Telnyx
    class DynamicEmergencyEndpoint < APIResource
      extend Telnyx::APIOperations::List
      extend Telnyx::APIOperations::Create
      include Telnyx::APIOperations::Delete
      include Telnyx::APIOperations::Save
  
      OBJECT_NAME = "dynamic_emergency_endpoint".freeze
    end
  end
  