# frozen_string_literal: true

module Telnyx
    class Documents < APIResource
      extend Telnyx::APIOperations::List
      extend Telnyx::APIOperations::Create
      include Telnyx::APIOperations::Delete
      include Telnyx::APIOperations::Save
      extend APIOperations::NestedResource

      ACTIONS = %w[download document_links].freeze
      ACTIONS.each do |action|
        nested_resource_class_methods action,
                                      path: %W[#{action}],
                                      operations: [:create],
                                      instance_methods: { create: action }

      OBJECT_NAME = "document".freeze
    end

  end
  