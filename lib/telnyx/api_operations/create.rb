# frozen_string_literal: true

module Telnyx
  module APIOperations
    module Create
      def create(params = {}, opts = {})
        resp, opts = request(:post, resource_url, params, opts)
        Util.convert_to_telnyx_object(resp.data, opts)
      end
    end
  end
end
