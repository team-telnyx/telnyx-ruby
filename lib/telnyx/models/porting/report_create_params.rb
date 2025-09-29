# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Reports#create
      class ReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute params
        #   The parameters for generating a porting orders CSV report.
        #
        #   @return [Telnyx::Models::Porting::ExportPortingOrdersCsvReport]
        required :params, -> { Telnyx::Porting::ExportPortingOrdersCsvReport }

        # @!attribute report_type
        #   Identifies the type of report
        #
        #   @return [Symbol, Telnyx::Models::Porting::ReportCreateParams::ReportType]
        required :report_type, enum: -> { Telnyx::Porting::ReportCreateParams::ReportType }

        # @!method initialize(params:, report_type:, request_options: {})
        #   @param params [Telnyx::Models::Porting::ExportPortingOrdersCsvReport] The parameters for generating a porting orders CSV report.
        #
        #   @param report_type [Symbol, Telnyx::Models::Porting::ReportCreateParams::ReportType] Identifies the type of report
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Identifies the type of report
        module ReportType
          extend Telnyx::Internal::Type::Enum

          EXPORT_PORTING_ORDERS_CSV = :export_porting_orders_csv

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
