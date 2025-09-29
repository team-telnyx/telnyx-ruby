# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::CsvDownloads#retrieve
      class CsvDownloadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PhoneNumbers::CsvDownload>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumbers::CsvDownload] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::PhoneNumbers::CsvDownload>]
      end
    end
  end
end
