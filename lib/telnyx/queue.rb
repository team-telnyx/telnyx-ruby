# frozen_string_literal: true

module Telnyx
  class Queue < APIResource
    extend Telnyx::APIOperations::NestedResource

    nested_resource_class_methods(
      :queue_call,
      path: "calls",
      operations: [:list, :retrieve],
      instance_methods: {
        list: "list",
        retrieve: "retrieve"
      }
    )

    OBJECT_NAME = "queue".freeze
    RESOURCE_PATH = "queues".freeze
  end
end
