# frozen_string_literal: true

module Telnyx
  class MessagingHostedNumberOrder < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource

    ACTIONS = %w[file_upload].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[action #{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "messaging_hosted_number_order".freeze

    def upload_file(params = {}, opts = {})
      resp, opts = request(:post, "#{resource_url}/actions/file_upload", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
  end
end
