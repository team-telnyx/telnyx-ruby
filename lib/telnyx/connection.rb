# frozen_string_literal: true

module Telnyx
  class Connection < APIResource
    extend Telnyx::APIOperations::List
    extend APIOperations::NestedResource
    nested_resource_class_methods :active_calls,
                                  path: ["active_calls"],
                                  operations: %i[list],
                                  instance_methods: { list: "active_calls" }

    OBJECT_NAME = "connection".freeze
  end
end
