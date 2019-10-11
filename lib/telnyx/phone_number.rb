# frozen_string_literal: true

module Telnyx
  class PhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::NestedResource

    ACTIONS = %w[voice messaging].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: [action],
                                    operations: %i[create list],
                                    instance_methods: { list: action, create: "create_#{action}" }
    end

    OBJECT_NAME = "phone_number".freeze
  end
end
