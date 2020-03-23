# frozen_string_literal: true

module Telnyx
  class WirelessDetailRecordsReport < APIResource
    include APIOperations::Delete
    extend APIOperations::List
    extend APIOperations::Create

    OBJECT_NAME = "detail_records_report".freeze
    RESOURCE_PATH = "wireless/detail_records_reports".freeze
  end
end
