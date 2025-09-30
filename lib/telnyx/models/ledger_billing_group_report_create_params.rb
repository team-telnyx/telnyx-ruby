# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::LedgerBillingGroupReports#create
    class LedgerBillingGroupReportCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute month
      #   Month of the ledger billing group report
      #
      #   @return [Integer, nil]
      optional :month, Integer

      # @!attribute year
      #   Year of the ledger billing group report
      #
      #   @return [Integer, nil]
      optional :year, Integer

      # @!method initialize(month: nil, year: nil, request_options: {})
      #   @param month [Integer] Month of the ledger billing group report
      #
      #   @param year [Integer] Year of the ledger billing group report
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
