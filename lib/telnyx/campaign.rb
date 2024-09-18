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
    def self.create(params = {}, opts = {})
      resp, opts = request(:post, "/10dlc/campaignBuilder", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def accept_sharing(params = {}, opts = {})
      resp, opts = request(:post, "/10dlc/campaign/acceptSharing/#{campaignId.gsub(/\s+/, '+')}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def sharing(params = {}, opts = {})
      resp, opts = request(:get, "/10dlc/campaign/#{campaignId.gsub(/\s+/, '+')}/sharing", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def osr_attributes(params = {}, opts = {})
      resp, opts = request(:get, "/10dlc/campaign/#{campaignId.gsub(/\s+/, '+')}/osr/attributes", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.retrieve(id, opts = {})
      resp, opts = request(:get, resource_url(id), {}, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "campaign"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "campaign".freeze
  end
end
