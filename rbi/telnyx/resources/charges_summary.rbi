# typed: strong

module Telnyx
  module Resources
    class ChargesSummary
      # Retrieve a summary of monthly charges for a specified date range. The date range
      # cannot exceed 31 days.
      sig do
        params(
          end_date: Date,
          start_date: Date,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ChargesSummaryRetrieveResponse)
      end
      def retrieve(
        # End date for the charges summary in ISO date format (YYYY-MM-DD). The date is
        # exclusive, data for the end_date itself is not included in the report. The
        # interval between start_date and end_date cannot exceed 31 days.
        end_date:,
        # Start date for the charges summary in ISO date format (YYYY-MM-DD)
        start_date:,
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
