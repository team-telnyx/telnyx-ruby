# frozen_string_literal: true

module Telnyx
  class Network < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    extend APIOperations::NestedResource
    ACTIONS = %w[network_interfaces].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:list],
                                    instance_methods: { list: action }
    end
    OBJECT_NAME = "network".freeze
  end
end
