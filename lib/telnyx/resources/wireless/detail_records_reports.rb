# frozen_string_literal: true

module Telnyx
  module Resources
    class Wireless
      class DetailRecordsReports
        # Asynchronously create a report containing Wireless Detail Records (WDRs) for the
        # SIM cards that consumed wireless data in the given time period.
        #
        # @overload create(end_time: nil, start_time: nil, request_options: {})
        #
        # @param end_time [String] ISO 8601 formatted date-time indicating the end time.
        #
        # @param start_time [String] ISO 8601 formatted date-time indicating the start time.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Wireless::DetailRecordsReportCreateResponse]
        #
        # @see Telnyx::Models::Wireless::DetailRecordsReportCreateParams
        def create(params = {})
          parsed, options = Telnyx::Wireless::DetailRecordsReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "wireless/detail_records_reports",
            body: parsed,
            model: Telnyx::Models::Wireless::DetailRecordsReportCreateResponse,
            options: options
          )
        end

        # Returns one specific WDR report
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Wireless::DetailRecordsReportRetrieveResponse]
        #
        # @see Telnyx::Models::Wireless::DetailRecordsReportRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["wireless/detail_records_reports/%1$s", id],
            model: Telnyx::Models::Wireless::DetailRecordsReportRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Returns the WDR Reports that match the given parameters.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer] The page number to load.
        #
        # @param page_size [Integer] The size of the page.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Wireless::DetailRecordsReportListResponse]
        #
        # @see Telnyx::Models::Wireless::DetailRecordsReportListParams
        def list(params = {})
          parsed, options = Telnyx::Wireless::DetailRecordsReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "wireless/detail_records_reports",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            model: Telnyx::Models::Wireless::DetailRecordsReportListResponse,
            options: options
          )
        end

        # Deletes one specific WDR report.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Wireless::DetailRecordsReportDeleteResponse]
        #
        # @see Telnyx::Models::Wireless::DetailRecordsReportDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["wireless/detail_records_reports/%1$s", id],
            model: Telnyx::Models::Wireless::DetailRecordsReportDeleteResponse,
            options: params[:request_options]
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
