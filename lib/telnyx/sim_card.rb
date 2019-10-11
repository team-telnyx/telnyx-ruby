# frozen_string_literal: true

module Telnyx
  class SimCard < APIResource
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource
    extend APIOperations::List

    ACTIONS = %w[deactivate activate].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "sim_card".freeze
  end
end
