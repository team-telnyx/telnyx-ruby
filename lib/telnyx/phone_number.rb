# frozen_string_literal: true

module Telnyx
  class PhoneNumber < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource
    include Telnyx::APIOperations::Save

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
