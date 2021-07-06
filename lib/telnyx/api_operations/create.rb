# frozen_string_literal: true

module Telnyx
  module APIOperations
    module Create
      def create(params = {}, opts = {})
        if opts.respond_to? :fetch
          url = opts.fetch(:resource_url, nil)
          opts.delete :resource_url
        end
        url ||= resource_url
        resp, opts = request(:post, url, params, opts)
        Util.convert_to_telnyx_object(resp.data, opts)
      end
    end
  end
end
