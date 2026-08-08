# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class CsvDownloads
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams} for more details.
        #
        # Starts generation of a CSV export for phone numbers matching the supplied
        # filters. The `csv_format` parameter selects the output format, and the response
        # contains the resulting download record.
        #
        # @overload create(csv_format: nil, filter: nil, request_options: {})
        #
        # @param csv_format [Symbol, Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::CsvFormat] Which format to use when generating the CSV file. The default for backwards comp
        #
        # @param filter [Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[has_bundle]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::CsvDownloadCreateResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams
        def create(params = {})
          parsed, options = Telnyx::PhoneNumbers::CsvDownloadCreateParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :post,
            path: "phone_numbers/csv_downloads",
            query: query,
            model: Telnyx::Models::PhoneNumbers::CsvDownloadCreateResponse,
            options: options
          )
        end

        # Returns the current status and download details for the CSV export identified by
        # `id`.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the CSV download.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["phone_numbers/csv_downloads/%1$s", id],
            model: Telnyx::Models::PhoneNumbers::CsvDownloadRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Returns CSV export jobs created for account phone numbers, including each
        # export's current status and pagination metadata.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer]
        # @param page_size [Integer]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PhoneNumbers::CsvDownload>]
        #
        # @see Telnyx::Models::PhoneNumbers::CsvDownloadListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::CsvDownloadListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "phone_numbers/csv_downloads",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::PhoneNumbers::CsvDownload,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
