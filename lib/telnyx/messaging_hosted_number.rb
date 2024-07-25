# frozen_string_literal: true

module Telnyx
  class MessagingHostedNumber < APIResource
    include Telnyx::APIOperations::Delete

    def self.resource_url(inner_id = nil)
      path_prefix = "/v2"
      object_path = "messaging_hosted_numbers"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "messaging_hosted_number".freeze
  end
end
