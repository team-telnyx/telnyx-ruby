# frozen_string_literal: true

module Telnyx
  class AvailablePhoneNumber < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::ParamWrapper
    wrap "list", "filter"

    def self.blocks(params = {}, opts = {})
      resp, opts = request(:get, "/v2/available_phone_number_blocks", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    OBJECT_NAME = "available_phone_number".freeze
  end
end
