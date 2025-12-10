# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::CsvDownloads#list
      class CsvDownload < Telnyx::Internal::Type::BaseModel
        # @!attribute status
        #   Indicates the completion level of the CSV report. Only complete CSV download
        #   requests will be able to be retrieved.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::CsvDownload::Status, nil]
        optional :status, enum: -> { Telnyx::PhoneNumbers::CsvDownload::Status }

        # @!attribute url
        #   The URL at which the CSV file can be retrieved.
        #
        #   @return [String, nil]
        optional :url, String

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, record_type: nil, status: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::CsvDownload} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param status [Symbol, Telnyx::Models::PhoneNumbers::CsvDownload::Status] Indicates the completion level of the CSV report. Only complete CSV download req
        #
        #   @param url [String] The URL at which the CSV file can be retrieved.

        # Indicates the completion level of the CSV report. Only complete CSV download
        # requests will be able to be retrieved.
        #
        # @see Telnyx::Models::PhoneNumbers::CsvDownload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          COMPLETE = :complete
          FAILED = :failed
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
