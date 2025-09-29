# typed: strong

module Telnyx
  module Resources
    class LedgerBillingGroupReports
      # Create a ledger billing group report
      sig do
        params(
          month: Integer,
          year: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::LedgerBillingGroupReportCreateResponse)
      end
      def create(
        # Month of the ledger billing group report
        month: nil,
        # Year of the ledger billing group report
        year: nil,
        request_options: {}
      )
      end

      # Get a ledger billing group report
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::LedgerBillingGroupReportRetrieveResponse)
      end
      def retrieve(
        # The id of the ledger billing group report
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
