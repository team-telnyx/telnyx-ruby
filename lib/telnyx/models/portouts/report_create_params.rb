# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Reports#create
      class ReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute params
        #   The parameters for generating a port-outs CSV report.
        #
        #   @return [Telnyx::Models::Portouts::ExportPortoutsCsvReport]
        required :params, -> { Telnyx::Portouts::ExportPortoutsCsvReport }

        # @!attribute report_type
        #   Identifies the type of report
        #
        #   @return [Symbol, Telnyx::Models::Portouts::ReportCreateParams::ReportType]
        required :report_type, enum: -> { Telnyx::Portouts::ReportCreateParams::ReportType }

        # @!method initialize(params:, report_type:, request_options: {})
        #   @param params [Telnyx::Models::Portouts::ExportPortoutsCsvReport] The parameters for generating a port-outs CSV report.
        #
        #   @param report_type [Symbol, Telnyx::Models::Portouts::ReportCreateParams::ReportType] Identifies the type of report
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Identifies the type of report
        module ReportType
          extend Telnyx::Internal::Type::Enum

          EXPORT_PORTOUTS_CSV = :export_portouts_csv

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
