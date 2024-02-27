# frozen_string_literal: true

module Telnyx
  class CdrUsageReport < APIResource
    def self.sync(params = {}, opts = {})
      opts = Util.normalize_opts(opts)
      resp, opts = request(:get, "/v2/reports/cdr_usage_reports/sync", params, opts)
      ListObject.construct_from(resp.data, opts)
    end

    OBJECT_NAME = "/reports/cdr_usage_report".freeze
  end
end
