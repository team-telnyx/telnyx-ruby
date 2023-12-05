# frozen_string_literal: true

module Telnyx
  class RoomSession < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    ACTIONS = %w[kick mute unmute end].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "room_session".freeze
  end
end
