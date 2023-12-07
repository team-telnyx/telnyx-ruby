# frozen_string_literal: true

module Telnyx
  class Campaign < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource

    ACTIONS = %w[mnoMetadata operationStatus].freeze
    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end
    def accept_sharing(params = {}, opts = {})
      resp, opts = request(:post, "/v2/campaign/acceptSharing/#{campaignId.gsub(/\s+/, '+')}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def sharing(params = {}, opts = {})
      resp, opts = request(:get, "/v2/campaign/#{campaignId.gsub(/\s+/, '+')}/sharing", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def osr_attributes(params = {}, opts = {})
      resp, opts = request(:get, "/v2/campaign/#{campaignId.gsub(/\s+/, '+')}/osr/attributes", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
    OBJECT_NAME = "campaign".freeze
  end
end
