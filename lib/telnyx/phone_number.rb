# frozen_string_literal: true

module Telnyx
  class PhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::NestedResource

    nested_resource_class_methods "voice",
                                  path: ["voice"],
                                  operations: %i[create list],
                                  instance_methods: { list: "voice", create: "update_voice" } # Using create instead of update because the endpoint requires a put, not patch request
    nested_resource_class_methods "messaging",
                                  path: ["messaging"],
                                  operations: %i[list],
                                  instance_methods: { list: "messaging" }

    OBJECT_NAME = "phone_number".freeze
  end
end
