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

    def self.submit_code(phone_number: nil, code: nil, verify_profile_id: nil)
      url = "#{resource_url}/by_phone_number/#{CGI.escape phone_number}/actions/verify"
      resp, _opts = request(:post, url, code: code, verify_profile_id: verify_profile_id)
      Response.construct_from resp.data[:data]
    end

    # Trigger a call verification.
    def self.call(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/call" })
    end

    # Trigger an SMS verification.
    def self.sms(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/sms" })
    end

    # Trigger a PSD2 verification.
    def self.psd2(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/psd2" })
    end

    # Trigger a flashcall verification.
    def self.flashcall(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/flashcall" })
    end

    # Trigger a whatsapp verification.
    def self.whatsapp(params = {}, opts = {})
      create(params, { **opts, resource_url: "#{resource_url}/whatsapp" })
    end

    OBJECT_NAME = "verify_verification".freeze
    RESOURCE_PATH = "verifications".freeze
  end
end
