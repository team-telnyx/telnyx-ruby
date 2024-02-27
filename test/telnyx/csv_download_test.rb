# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CsvDownloadTest < Test::Unit::TestCase
    should "list csv_downloads" do
      csv_downloads = CsvDownload.list
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/csv_downloads"
      assert_kind_of ListObject, csv_downloads
      assert csv_downloads.first.is_a?(CsvDownload) ||
             csv_downloads.first.is_a?(TelnyxObject),
             "Unexpected type: #{csv_downloads.first.class}"
    end

    should "retrieve a csv_download" do
      omit "ID req mismatch"
      csv = CsvDownload.retrieve("quasi")
      omit "ID req mismatch, 'keys"
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/csv_downloads/quasi"
      assert csv.is_a?(CsvDownload) ||
             csv.is_a?(IPCsvDownload) ||
             csv.is_a?(CredentialCsvDownload),
             "Unexpected type: #{csv.class}"
    end

    should "create a csv_download" do
      omit "ID req mismatch"
      CsvDownload.create
      assert_requested :post, "#{Telnyx.api_base}/v2/phone_numbers/csv_downloads"
    end
  end
end
