# frozen_string_literal: true

module Telnyx
  class PortingOrder < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    include APIOperations::Delete
    include Telnyx::APIOperations::Save

    nested_resource_class_methods :loa_template,
                                  path: ["loa_template"],
                                  operations: %i[list],
                                  instance_methods: { list: "loa_template" }
    nested_resource_class_methods :porting_phone_numbers,
                                  path: ["porting_phone_numbers"],
                                  operations: %i[list],
                                  instance_methods: { list: "porting_phone_numbers" }
    nested_resource_class_methods :exception_types,
                                  path: ["exception_types"],
                                  operations: %i[list],
                                  instance_methods: { list: "exception_types" }
    nested_resource_class_methods :allowed_foc_windows,
                                  path: ["allowed_foc_windows"],
                                  operations: %i[list],
                                  instance_methods: { list: "allowed_foc_windows" }
    nested_resource_class_methods :activation_job,
                                  path: ["activiation_jobs"],
                                  operations: %i[list],
                                  instance_methods: { list: "activation_jobs" }
    nested_resource_class_methods :confirm,
                                  path: ["confirm"],
                                  operations: %i[create],
                                  instance_methods: { create: "confirm" }
    nested_resource_class_methods :cancel,
                                  path: ["cancel"],
                                  operations: %i[create],
                                  instance_methods: { create: "cancel" }
    OBJECT_NAME = "porting_order"
  end
end
