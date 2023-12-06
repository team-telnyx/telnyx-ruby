# frozen_string_literal: true

module Telnyx
  class TelephonyCredential < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend APIOperations::NestedResource
    ACTIONS = %w[activate deactivate].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    %w[token].each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end
    # Additional action to list tags
    def self.tags(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:get, "/v2/telephony_credentials/tags", params, opts)
      ListObject.construct_from(resp.data, opts)
    end

    OBJECT_NAME = "telephony_credential".freeze
  end
end
