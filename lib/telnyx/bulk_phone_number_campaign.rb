# frozen_string_literal: true

module Telnyx
  class PhoneNumberAssignmentByProfile < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource

    def accept_sharing(params = {}, opts = {})
      resp, opts = request(:get, "/10dlc/campaign/phoneNumbers/#{taskId.gsub(/\s+/, '+')}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "phoneNumberAssignmentByProfile"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "10dlc/phoneNumberAssignmentByProfile".freeze
  end
end
