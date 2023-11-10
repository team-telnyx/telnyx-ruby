# frozen_string_literal: true

module Telnyx
  class ManagedAccount < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    include APIOperations::Delete
    include APIOperations::Save

    ACTIONS = %w[enable disable].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "managed_account".freeze
  end
end
