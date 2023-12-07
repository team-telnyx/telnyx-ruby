# frozen_string_literal: true

module Telnyx
  class DialogflowConnection < APIResource
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "dialogflow_connection".freeze
    def self.create(params = {}, opts = {})
      if opts.respond_to? :fetch
        url = opts.fetch(:resource_url, nil)
        opts.delete :resource_url
      end
      url ||= resource_url
      resp, opts = request(:post, "#{url}/#{params[:connection_id]}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
  end
end
