# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChargesSummary#retrieve
    class ChargesSummaryRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute end_date
      #   End date for the charges summary in ISO date format (YYYY-MM-DD). The date is
      #   exclusive, data for the end_date itself is not included in the report. The
      #   interval between start_date and end_date cannot exceed 31 days.
      #
      #   @return [Date]
      required :end_date, Date

      # @!attribute start_date
      #   Start date for the charges summary in ISO date format (YYYY-MM-DD)
      #
      #   @return [Date]
      required :start_date, Date

      # @!method initialize(end_date:, start_date:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ChargesSummaryRetrieveParams} for more details.
      #
      #   @param end_date [Date] End date for the charges summary in ISO date format (YYYY-MM-DD). The date is ex
      #
      #   @param start_date [Date] Start date for the charges summary in ISO date format (YYYY-MM-DD)
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
