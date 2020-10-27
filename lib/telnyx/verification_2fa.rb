# frozen_string_literal: true

module Telnyx
  class Verification2FA < APIResource
    extend APIOperations::Create
    extend APIOperations::NestedResource

    nested_resource_class_methods "by_telephone",
                                  path: "by_tn",
                                  operations: [:retrieve],
                                  instance_methods: {
                                    retrieve: "by_telephone",
                                  }

    def self.submit_code(phone_number: nil, code: nil)
      url = "#{resource_url}/by_tn/#{CGI.escape phone_number}/actions/verify"
      resp, _opts = request(:post, url, code: code)
      Util.convert_to_telnyx_object(resp.data)
    end

    OBJECT_NAME = "2fa_verification".freeze
  end
end
