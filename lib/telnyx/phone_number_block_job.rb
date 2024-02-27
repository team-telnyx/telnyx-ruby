# frozen_string_literal: true

module Telnyx
  class PhoneNumberBlockJob < APIResource
    extend Telnyx::APIOperations::List

    def self.delete_phone_number_block(params = {}, opts = {})
      resp, opts = request(:post, "/v2/phone_number_blocks/jobs/delete_phone_number_block", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    OBJECT_NAME = "phone_number_blocks/job".freeze
  end
end
