# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Reports#list
      class PortoutReport < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Uniquely identifies the report.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute document_id
        #   Identifies the document that was uploaded when report was generated. This field
        #   is only populated when the report is under completed status.
        #
        #   @return [String, nil]
        optional :document_id, String

        # @!attribute params
        #   The parameters for generating a port-outs CSV report.
        #
        #   @return [Telnyx::Models::Portouts::ExportPortoutsCsvReport, nil]
        optional :params, -> { Telnyx::Portouts::ExportPortoutsCsvReport }

        # @!attribute report_type
        #   Identifies the type of report
        #
        #   @return [Symbol, Telnyx::Models::Portouts::PortoutReport::ReportType, nil]
        optional :report_type, enum: -> { Telnyx::Portouts::PortoutReport::ReportType }

        # @!attribute status
        #   The current status of the report generation.
        #
        #   @return [Symbol, Telnyx::Models::Portouts::PortoutReport::Status, nil]
        optional :status, enum: -> { Telnyx::Portouts::PortoutReport::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, created_at: nil, document_id: nil, params: nil, record_type: nil, report_type: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Portouts::PortoutReport} for more details.
        #
        #   @param id [String] Uniquely identifies the report.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param document_id [String] Identifies the document that was uploaded when report was generated. This field
        #
        #   @param params [Telnyx::Models::Portouts::ExportPortoutsCsvReport] The parameters for generating a port-outs CSV report.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param report_type [Symbol, Telnyx::Models::Portouts::PortoutReport::ReportType] Identifies the type of report
        #
        #   @param status [Symbol, Telnyx::Models::Portouts::PortoutReport::Status] The current status of the report generation.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        # Identifies the type of report
        #
        # @see Telnyx::Models::Portouts::PortoutReport#report_type
        module ReportType
          extend Telnyx::Internal::Type::Enum

          EXPORT_PORTOUTS_CSV = :export_portouts_csv

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the report generation.
        #
        # @see Telnyx::Models::Portouts::PortoutReport#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          COMPLETED = :completed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PortoutReport = Portouts::PortoutReport
  end
end
