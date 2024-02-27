# frozen_string_literal: true

module Telnyx
  class CsvDownload < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "phone_numbers/csv_download".freeze
  end
end
