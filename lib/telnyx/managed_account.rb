# frozen_string_literal: true

module Telnyx
  class ManagedAccount < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    include APIOperations::Delete
    include APIOperations::Save

    ACTIONS = %w[enable disable].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end
    nested_resource_class_methods "update_global_channel_limit",
                                  path: "update_global_channel_limit",
                                  operations: [:update],
                                  instance_methods: { update: "update_global_channel_limit" }
    def self.allocatable_global_outbound_channels(params = {}, opts = {})
      resp, opts = request(:get, "/v2/managed_accounts/allocatable_global_outbound_channels", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def update_global_channel_limit(opts)
      self.class.update_update_global_channel_limit(id, nil, opts)
    end
    OBJECT_NAME = "managed_account".freeze
  end
end
