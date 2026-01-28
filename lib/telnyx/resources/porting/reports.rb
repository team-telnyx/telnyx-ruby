# frozen_string_literal: true

module Telnyx
  module Resources
    class Porting
      class Reports
        # Generate reports about porting operations.
        #
        # @overload create(params:, report_type:, request_options: {})
        #
        # @param params [Telnyx::Models::Porting::ExportPortingOrdersCsvReport] The parameters for generating a porting orders CSV report.
        #
        # @param report_type [Symbol, Telnyx::Models::Porting::ReportCreateParams::ReportType] Identifies the type of report
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::ReportCreateResponse]
        #
        # @see Telnyx::Models::Porting::ReportCreateParams
        def create(params)
          parsed, options = Telnyx::Porting::ReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "porting/reports",
            body: parsed,
            model: Telnyx::Models::Porting::ReportCreateResponse,
            options: options
          )
        end

        # Retrieve a specific report generated.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies a report.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::ReportRetrieveResponse]
        #
        # @see Telnyx::Models::Porting::ReportRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["porting/reports/%1$s", id],
            model: Telnyx::Models::Porting::ReportRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Porting::ReportListParams} for more details.
        #
        # List the reports generated about porting operations.
        #
        # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::Porting::ReportListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[report_type
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Porting::PortingReport>]
        #
        # @see Telnyx::Models::Porting::ReportListParams
        def list(params = {})
          parsed, options = Telnyx::Porting::ReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "porting/reports",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Porting::PortingReport,
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
