# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class CsvDownloads
        # Create a CSV download
        sig do
          params(
            csv_format:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::CsvFormat::OrSymbol,
            filter:
              Telnyx::PhoneNumbers::CsvDownloadCreateParams::Filter::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::CsvDownloadCreateResponse)
        end
        def create(
          # Which format to use when generating the CSV file. The default for backwards
          # compatibility is 'V1'
          csv_format: nil,
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[has_bundle], filter[tag], filter[connection_id], filter[phone_number],
          # filter[status], filter[voice.connection_name],
          # filter[voice.usage_payment_method], filter[billing_group_id],
          # filter[emergency_address_id], filter[customer_reference]
          filter: nil,
          request_options: {}
        )
        end

        # Retrieve a CSV download
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveResponse)
        end
        def retrieve(
          # Identifies the CSV download.
          id,
          request_options: {}
        )
        end

        # List CSV downloads
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::PhoneNumbers::CsvDownload
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
