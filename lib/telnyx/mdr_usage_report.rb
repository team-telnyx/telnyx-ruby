# frozen_string_literal: true

module Telnyx
  class MdrUsageReport < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    def self.resource_path(id = nil)
      return "reports/mdr_usage_reports/#{CGI.escape(id)}" if id

      "reports/mdr_usage_reports"
    end

    def self.sync(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:get, "/v2/reports/cdr_usage_reports/sync", params, opts)
      ListObject.construct_from(resp.data, opts)
    end
    OBJECT_NAME = "/reports/mdr_usage_report".freeze
  end
end
