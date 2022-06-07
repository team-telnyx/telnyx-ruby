# frozen_string_literal: true

module Telnyx
  class Portout < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::NestedResource

    ACTIONS = %w[status comments supporting_documents].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }

    OBJECT_NAME = "portout".freeze
  end
end
