# frozen_string_literal: true

module Telnyx
  module Resources
    class Portouts
      class Reports
        # Generate reports about port-out operations.
        #
        # @overload create(params:, report_type:, request_options: {})
        #
        # @param params [Telnyx::Models::Portouts::ExportPortoutsCsvReport] The parameters for generating a port-outs CSV report.
        #
        # @param report_type [Symbol, Telnyx::Models::Portouts::ReportCreateParams::ReportType] Identifies the type of report
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::ReportCreateResponse]
        #
        # @see Telnyx::Models::Portouts::ReportCreateParams
        def create(params)
          parsed, options = Telnyx::Portouts::ReportCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "portouts/reports",
            body: parsed,
            model: Telnyx::Models::Portouts::ReportCreateResponse,
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
        # @return [Telnyx::Models::Portouts::ReportRetrieveResponse]
        #
        # @see Telnyx::Models::Portouts::ReportRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["portouts/reports/%1$s", id],
            model: Telnyx::Models::Portouts::ReportRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Portouts::ReportListParams} for more details.
        #
        # List the reports generated about port-out operations.
        #
        # @overload list(filter: nil, page: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::Portouts::ReportListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[report_type
        #
        # @param page [Telnyx::Models::Portouts::ReportListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::ReportListResponse]
        #
        # @see Telnyx::Models::Portouts::ReportListParams
        def list(params = {})
          parsed, options = Telnyx::Portouts::ReportListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "portouts/reports",
            query: parsed,
            model: Telnyx::Models::Portouts::ReportListResponse,
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
