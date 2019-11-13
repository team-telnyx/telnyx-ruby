# frozen_string_literal: true

module Telnyx
  class PhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::NestedResource

    nested_resource_class_methods "voice",
                                  path: ["voice"],
                                  operations: %i[update list],
                                  instance_methods: { list: "voice" }
    nested_resource_class_methods "messaging",
                                  path: ["messaging"],
                                  operations: %i[update list],
                                  instance_methods: { list: "messaging" }

    def update_messaging(opts)
      self.class.update_messaging(id, nil, opts)
    end

    def update_voice(opts)
      self.class.update_voice(id, nil, opts)
    end

    OBJECT_NAME = "phone_number".freeze
  end
end
