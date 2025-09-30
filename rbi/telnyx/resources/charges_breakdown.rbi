# typed: strong

module Telnyx
  module Resources
    class ChargesBreakdown
      # Retrieve a detailed breakdown of monthly charges for phone numbers in a
      # specified date range. The date range cannot exceed 31 days.
      sig do
        params(
          start_date: Date,
          end_date: Date,
          format_: Telnyx::ChargesBreakdownRetrieveParams::Format::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ChargesBreakdownRetrieveResponse)
      end
      def retrieve(
        # Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
        start_date:,
        # End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not
        # provided, defaults to start_date + 1 month. The date is exclusive, data for the
        # end_date itself is not included in the report. The interval between start_date
        # and end_date cannot exceed 31 days.
        end_date: nil,
        # Response format
        format_: nil,
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
