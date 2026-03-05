# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrdersReport#retrieve
    class SubNumberOrdersReportRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute report_id
      #
      #   @return [String]
      required :report_id, String

      # @!method initialize(report_id:, request_options: {})
      #   @param report_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
