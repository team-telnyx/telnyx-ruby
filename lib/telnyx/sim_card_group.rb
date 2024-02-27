# frozen_string_literal: true

module Telnyx
  class SimCardGroup < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save
    extend APIOperations::NestedResource

    ACTIONS = %w[set_private_wireless_gateway remove_private_wireless_gateway].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "sim_card_group".freeze
  end
end
