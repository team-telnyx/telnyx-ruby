# frozen_string_literal: true

module Telnyx
  class Wdr < APIResource
    extend APIOperations::List
    def self.resource_path(id = nil)
      return "reports/wdrs/#{CGI.escape(id)}" if id

      "reports/wdrs"
    end
    OBJECT_NAME = "/reports/wdr".freeze
  end
end
