# frozen_string_literal: true

module Telnyx
  class Verification < APIResource
    # Type for verification responses
    class Response < TelnyxObject; end

    extend APIOperations::Create
    extend APIOperations::NestedResource

    class << self
      private :create
    end

    nested_resource_class_methods "by_telephone",
                                  path: "by_tn",
                                  operations: [:retrieve],
                                  instance_methods: {
                                    retrieve: "by_telephone",
                                  }

    def self.submit_code(phone_number: nil, code: nil)
      url = "#{resource_url}/by_phone_number/#{CGI.escape phone_number}/actions/verify"
      resp, _opts = request(:post, url, code: code)
      Response.construct_from resp.data[:data]
    end

    # Trigger a call verification
    def self.call(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/call" })
    end

    OBJECT_NAME = "verify_verification".freeze
    RESOURCE_PATH = "verifications".freeze
  end
end
