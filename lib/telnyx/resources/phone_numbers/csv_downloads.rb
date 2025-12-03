# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class CsvDownloads
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::CsvDownloadCreateParams} for more details.
        #
        # Create a CSV download
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
          @client.request(
            method: :post,
            path: "phone_numbers/csv_downloads",
            query: parsed,
            model: Telnyx::Models::PhoneNumbers::CsvDownloadCreateResponse,
            options: options
          )
        end

        # Retrieve a CSV download
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

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::CsvDownloadListParams} for more details.
        #
        # List CSV downloads
        #
        # @overload list(page: nil, request_options: {})
        #
        # @param page [Telnyx::Models::PhoneNumbers::CsvDownloadListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::CsvDownloadListResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::CsvDownloadListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::CsvDownloadListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_numbers/csv_downloads",
            query: parsed,
            model: Telnyx::Models::PhoneNumbers::CsvDownloadListResponse,
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
