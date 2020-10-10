# frozen_string_literal: true

module Telnyx
  class SimCard < APIResource
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource
    extend APIOperations::List

    ACTIONS = %w[enable disable].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    def self.register(params = {}, opts = {})
      resp, opts = request(:post, "/v2/actions/register/sim_cards", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    OBJECT_NAME = "sim_card".freeze

    # depreciated api
    def activate
      warn "[DEPRECATION] SimCard#activate is deprecated, use enable instead."
      enable
    end

    def deactivate
      warn "[DEPRECATION] SimCard#deactivate is deprecated, use enable instead."
      disable
    end
  end
end
