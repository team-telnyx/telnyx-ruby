# frozen_string_literal: true

module Telnyx
  class Conference < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource

    ACTIONS = %w[join mute unmute hold unhold leave speak stop play dial_participant update].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ["actions", action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    nested_resource_class_methods "record_start",
                                  path: ["actions", "record_start"],
                                  operations: [:create],
                                  instance_methods: { create: "start_recording" }

    nested_resource_class_methods "record_stop",
                                  path: ["actions", "record_stop"],
                                  operations: [:create],
                                  instance_methods: { create: "stop_recording" }

    nested_resource_class_methods "participants",
                                  path: "participants",
                                  operations: [:list],
                                  instance_methods: { list: "participants" }

    OBJECT_NAME = "conference".freeze
  end
  Conferences = Conference # Name change without breaking existing code
end
