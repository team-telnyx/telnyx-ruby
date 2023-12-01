# frozen_string_literal: true

module Telnyx
  class Fax < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource

    ACTIONS = %w[refresh].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[actions #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "fax".freeze
    RESOURCE_PATH = "faxes".freeze
    def self.retrieve(id, opts = {})
      id, retrieve_params = Util.normalize_id(id)
      resp, opts = request(:get, "#{resource_url}/#{CGI.escape(id)}", retrieve_params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
  end
end
