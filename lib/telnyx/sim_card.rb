# frozen_string_literal: true

module Telnyx
  class SimCard < APIResource
    extend Telnyx::APIOperations::NestedResource

    nested_resource_class_methods "deactivate",
                                  path: %w[actions deactivate],
                                  operations: [:create],
                                  instance_methods: { create: "deactivate" }

    OBJECT_NAME = "sim_card".freeze
  end
end
