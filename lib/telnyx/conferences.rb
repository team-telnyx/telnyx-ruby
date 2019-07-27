# frozen_string_literal: true

module Telnyx
  class Conferences < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource

    ACTIONS = %w[join mute unmute hold unhold]

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ['actions', action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end
    OBJECT_NAME = 'conference'
  end
end
