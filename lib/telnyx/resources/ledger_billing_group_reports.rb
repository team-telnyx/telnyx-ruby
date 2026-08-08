# frozen_string_literal: true

module Telnyx
  module Resources
    # Ledger billing reports
    class LedgerBillingGroupReports
      # Create a ledger billing group report, which aggregates ledger activity by
      # billing group.
      #
      # @overload create(month: nil, year: nil, request_options: {})
      #
      # @param month [Integer] Month of the ledger billing group report
      #
      # @param year [Integer] Year of the ledger billing group report
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::LedgerBillingGroupReportCreateResponse]
      #
      # @see Telnyx::Models::LedgerBillingGroupReportCreateParams
      def create(params = {})
        parsed, options = Telnyx::LedgerBillingGroupReportCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ledger_billing_group_reports",
          body: parsed,
          model: Telnyx::Models::LedgerBillingGroupReportCreateResponse,
          options: options
        )
      end

      # Retrieve the details and status of a previously created ledger billing group
      # report.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the ledger billing group report
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::LedgerBillingGroupReportRetrieveResponse]
      #
      # @see Telnyx::Models::LedgerBillingGroupReportRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["ledger_billing_group_reports/%1$s", id],
          model: Telnyx::Models::LedgerBillingGroupReportRetrieveResponse,
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
