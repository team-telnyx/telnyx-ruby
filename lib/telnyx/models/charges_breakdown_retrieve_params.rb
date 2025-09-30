# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChargesBreakdown#retrieve
    class ChargesBreakdownRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute start_date
      #   Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
      #
      #   @return [Date]
      required :start_date, Date

      # @!attribute end_date
      #   End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not
      #   provided, defaults to start_date + 1 month. The date is exclusive, data for the
      #   end_date itself is not included in the report. The interval between start_date
      #   and end_date cannot exceed 31 days.
      #
      #   @return [Date, nil]
      optional :end_date, Date

      # @!attribute format_
      #   Response format
      #
      #   @return [Symbol, Telnyx::Models::ChargesBreakdownRetrieveParams::Format, nil]
      optional :format_, enum: -> { Telnyx::ChargesBreakdownRetrieveParams::Format }

      # @!method initialize(start_date:, end_date: nil, format_: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ChargesBreakdownRetrieveParams} for more details.
      #
      #   @param start_date [Date] Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
      #
      #   @param end_date [Date] End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not provi
      #
      #   @param format_ [Symbol, Telnyx::Models::ChargesBreakdownRetrieveParams::Format] Response format
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Response format
      module Format
        extend Telnyx::Internal::Type::Enum

        JSON = :json
        CSV = :csv

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
