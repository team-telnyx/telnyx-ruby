# frozen_string_literal: true

module Telnyx
  class SimCard < APIResource
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource
    extend APIOperations::List

    ACTIONS = %w[enable disable set_standby network_preferences public_ip wireless_connectivity_logs device_details set_public_ip set_network_preferences remove_public_ip delete_network_preferences].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end
    nested_resource_class_methods :device_details,
                                  path: ["device_details"],
                                  operations: %i[list],
                                  instance_methods: { list: "device_details" }
    nested_resource_class_methods :activation_code,
                                  path: ["activation_code"],
                                  operations: %i[list],
                                  instance_methods: { list: "activation_code" }

    def self.register(params = {}, opts = {})
      resp, opts = request(:post, "/v2/actions/register/sim_cards", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    # Additional action to validate registration codes
    def self.validate_registration_codes(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:post, "/v2/sim_cards/actions/validate_registration_codes", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    # Additional action to bulk_set_public_ips
    def self.bulk_set_public_ips(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:post, "/v2/sim_cards/actions/bulk_set_public_ips", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    # depreciated api
    def activate
      warn "[DEPRECATION] SimCard#activate is deprecated, use enable instead."
      enable
    end

    def deactivate
      warn "[DEPRECATION] SimCard#deactivate is deprecated, use enable instead."
      disable
    end
    OBJECT_NAME = "sim_card".freeze
  end
end
