# frozen_string_literal: true

module Telnyx
  class BatchMdrReport < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    def self.resource_path(id = nil)
      return "reports/batch_mdr_reports/#{CGI.escape(id)}" if id

      "reports/batch_mdr_reports"
    end
    OBJECT_NAME = "/reports/batch_mdr_report".freeze
  end
end
