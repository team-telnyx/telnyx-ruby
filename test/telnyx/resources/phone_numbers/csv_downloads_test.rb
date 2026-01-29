# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PhoneNumbers::CsvDownloadsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.csv_downloads.create

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::CsvDownloadCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::CsvDownload]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.csv_downloads.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::CsvDownload]) | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.phone_numbers.csv_downloads.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PhoneNumbers::CsvDownload
    end

    assert_pattern do
      row => {
        id: String | nil,
        record_type: String | nil,
        status: Telnyx::PhoneNumbers::CsvDownload::Status | nil,
        url: String | nil
      }
    end
  end
end
