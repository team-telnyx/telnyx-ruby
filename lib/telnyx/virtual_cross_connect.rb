# frozen_string_literal: true

module Telnyx
  class VirtualCrossConnect < APIResource
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    ACTIONS = %w[provision].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "virtual_cross_connect".freeze
  end
end
