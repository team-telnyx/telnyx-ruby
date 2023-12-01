# frozen_string_literal: true

module Telnyx
  class Room < APIResource
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    ACTIONS = %w[generate_join_client_token refresh_client_token].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "room".freeze
  end
end
