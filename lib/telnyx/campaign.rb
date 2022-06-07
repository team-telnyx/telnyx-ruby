# frozen_string_literal: true

module Telnyx
    class Campaign < APIResource
      extend Telnyx::APIOperations::List
      extend Telnyx::APIOperations::Create
      include Telnyx::APIOperations::Delete
      include Telnyx::APIOperations::Save
      extend APIOperations::NestedResource

      ACTIONS = %w[mnoMetadata operationStatus].freeze
      ACTIONS.each do |action|
        nested_resource_class_methods action,
                                      path: %W[#{action}],
                                      operations: [:create],
                                      instance_methods: { create: action }

      OBJECT_NAME = "campaign".freeze
    end

  end
  