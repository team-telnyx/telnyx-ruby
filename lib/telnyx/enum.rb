# frozen_string_literal: true

module Telnyx
  class Enum < APIResource
    extend APIOperations::List
    extend APIOperations::NestedResource

    def self.endpoint(params = {}, opts = {})
      resp, opts = request(:get, "/v2/enum/#{params[:endpoint]}", params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "enum"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "enum".freeze
  end
end
