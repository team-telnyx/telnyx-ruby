# frozen_string_literal: true

module Telnyx
  class BulkCredential < APIResource
    def self.bulk_telephony_credentials(params = {}, opts = {})
      resp, opts = request(:post, "/v2/actions/bulk/telephony_credentials", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.purchase_esims(params = {}, opts = {})
      resp, opts = request(:post, "/v2/actions/purchase/esims", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
    OBJECT_NAME = "action".freeze
  end
end
