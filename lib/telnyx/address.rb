# frozen_string_literal: true

module Telnyx
  class Address < APIResource
    include APIOperations::Delete
    extend APIOperations::List
    extend APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    ACTIONS = %w[validate].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "address".freeze
    RESOURCE_PATH = "addresses".freeze
  end
end
