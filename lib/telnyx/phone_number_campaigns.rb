# frozen_string_literal: true

module Telnyx
  class PhoneNumberCampaign < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "campaign"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "10dlc/phoneNumberCampaign".freeze
  end
end
