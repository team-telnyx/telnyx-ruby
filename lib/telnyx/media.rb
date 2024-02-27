# frozen_string_literal: true

module Telnyx
  class Media < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    include APIOperations::Delete
    include APIOperations::Save

    ACTIONS = %w[download].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "media".freeze
  end
end
