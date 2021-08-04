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
    OBJECT_NAME = "porting_order"
  end
end
