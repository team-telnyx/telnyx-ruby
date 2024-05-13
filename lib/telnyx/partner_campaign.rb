# frozen_string_literal: true

module Telnyx
  class PartnerCampaign < APIResource
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
    def sharing(params = {}, opts = {})
      resp, opts = request(:post, "/10dlc/campaign/sharing/#{campaignId.gsub(/\s+/, '+')}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "partnerCampaign"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "partnerCampaign".freeze
  end
end
