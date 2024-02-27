# frozen_string_literal: true

module Telnyx
  module APIOperations
    module Delete
      def delete(params = {}, opts = {})
        opts = Util.normalize_opts(opts)
        resp, opts = request(:delete, resource_url, params, opts)
        initialize_from(resp.data[:data], opts) if resp.data[:data].present? # at deletion resp[:data] not present for some apis
      end
    end
  end
end
