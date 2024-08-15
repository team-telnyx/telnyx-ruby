# frozen_string_literal: true

module Telnyx
  class Brand < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::List
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete

    OBJECT_NAME = "brand".freeze

    def self.resource_url
      "/brand"
    end
    def self.get_feedback(brand_id, opts = {})
      url = "#{resource_url}/#{CGI.escape(brand_id)}/feedback"
      resp, opts = request(:get, url, {}, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.list_external_vettings(brand_id, opts = {})
      url = "#{resource_url}/#{CGI.escape(brand_id)}/externalVetting"
      resp, opts = request(:get, url, {}, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.order_external_vetting(brand_id, params = {}, opts = {})
      url = "#{resource_url}/#{CGI.escape(brand_id)}/externalVetting"
      resp, opts = request(:post, url, params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.import_external_vetting_record(brand_id, params = {}, opts = {})
      url = "#{resource_url}/#{CGI.escape(brand_id)}/externalVetting"
      resp, opts = request(:put, url, params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def self.revet(brand_id, opts = {})
      url = "#{resource_url}/#{CGI.escape(brand_id)}/revet"
      resp, opts = request(:put, url, {}, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end
end
