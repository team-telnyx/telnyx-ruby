# frozen_string_literal: true

module Telnyx
  module Resources
    class Reports
      # @return [Telnyx::Resources::Reports::CdrUsageReports]
      attr_reader :cdr_usage_reports

      # @return [Telnyx::Resources::Reports::MdrUsageReports]
      attr_reader :mdr_usage_reports

      # Fetch all Mdr records
      #
      # @overload list_mdrs(id: nil, cld: nil, cli: nil, direction: nil, end_date: nil, message_type: nil, profile: nil, start_date: nil, status: nil, request_options: {})
      #
      # @param id [String] Message uuid
      #
      # @param cld [String] Destination number
      #
      # @param cli [String] Origination number
      #
      # @param direction [Symbol, Telnyx::Models::ReportListMdrsParams::Direction] Direction (inbound or outbound)
      #
      # @param end_date [String] Pagination end date
      #
      # @param message_type [Symbol, Telnyx::Models::ReportListMdrsParams::MessageType] Type of message
      #
      # @param profile [String] Name of the profile
      #
      # @param start_date [String] Pagination start date
      #
      # @param status [Symbol, Telnyx::Models::ReportListMdrsParams::Status] Message status
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ReportListMdrsResponse]
      #
      # @see Telnyx::Models::ReportListMdrsParams
      def list_mdrs(params = {})
        parsed, options = Telnyx::ReportListMdrsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "reports/mdrs",
          query: parsed,
          model: Telnyx::Models::ReportListMdrsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ReportListWdrsParams} for more details.
      #
      # Fetch all Wdr records
      #
      # @overload list_wdrs(id: nil, end_date: nil, imsi: nil, mcc: nil, mnc: nil, page: nil, phone_number: nil, sim_card_id: nil, sim_group_id: nil, sim_group_name: nil, sort: nil, start_date: nil, request_options: {})
      #
      # @param id [String] WDR uuid
      #
      # @param end_date [String] End date
      #
      # @param imsi [String] International mobile subscriber identity
      #
      # @param mcc [String] Mobile country code
      #
      # @param mnc [String] Mobile network code
      #
      # @param page [Telnyx::Models::ReportListWdrsParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param phone_number [String] Phone number
      #
      # @param sim_card_id [String] Sim card unique identifier
      #
      # @param sim_group_id [String] Sim group unique identifier
      #
      # @param sim_group_name [String] Sim group name
      #
      # @param sort [Array<String>] Field used to order the data. If no field is specified, default value is 'create
      #
      # @param start_date [String] Start date
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ReportListWdrsResponse]
      #
      # @see Telnyx::Models::ReportListWdrsParams
      def list_wdrs(params = {})
        parsed, options = Telnyx::ReportListWdrsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "reports/wdrs",
          query: parsed,
          model: Telnyx::Models::ReportListWdrsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @cdr_usage_reports = Telnyx::Resources::Reports::CdrUsageReports.new(client: client)
        @mdr_usage_reports = Telnyx::Resources::Reports::MdrUsageReports.new(client: client)
      end
    end
  end
end
