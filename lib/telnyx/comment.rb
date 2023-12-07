# frozen_string_literal: true

module Telnyx
  class Comment < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    extend APIOperations::NestedResource

     nested_resource_class_methods "read",
                                  path: "read",
                                  operations: [:update],
                                  instance_methods: { update: "read" }

    def read(opts=nil)
      self.class.update_read(id, nil, opts)
    end

    OBJECT_NAME = "comment".freeze
  end
end
