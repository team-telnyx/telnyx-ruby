# typed: strong

module Telnyx
  module Models
    PortoutReport = Portouts::PortoutReport

    module Portouts
      class PortoutReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Portouts::PortoutReport, Telnyx::Internal::AnyHash)
          end

        # Uniquely identifies the report.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Identifies the document that was uploaded when report was generated. This field
        # is only populated when the report is under completed status.
        sig { returns(T.nilable(String)) }
        attr_reader :document_id

        sig { params(document_id: String).void }
        attr_writer :document_id

        # The parameters for generating a port-outs CSV report.
        sig { returns(T.nilable(Telnyx::Portouts::ExportPortoutsCsvReport)) }
        attr_reader :params

        sig do
          params(params: Telnyx::Portouts::ExportPortoutsCsvReport::OrHash).void
        end
        attr_writer :params

        # Identifies the type of report
        sig do
          returns(
            T.nilable(Telnyx::Portouts::PortoutReport::ReportType::TaggedSymbol)
          )
        end
        attr_reader :report_type

        sig do
          params(
            report_type: Telnyx::Portouts::PortoutReport::ReportType::OrSymbol
          ).void
        end
        attr_writer :report_type

        # The current status of the report generation.
        sig do
          returns(
            T.nilable(Telnyx::Portouts::PortoutReport::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(status: Telnyx::Portouts::PortoutReport::Status::OrSymbol).void
        end
        attr_writer :status

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            created_at: Time,
            document_id: String,
            params: Telnyx::Portouts::ExportPortoutsCsvReport::OrHash,
            record_type: String,
            report_type: Telnyx::Portouts::PortoutReport::ReportType::OrSymbol,
            status: Telnyx::Portouts::PortoutReport::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the report.
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Identifies the document that was uploaded when report was generated. This field
          # is only populated when the report is under completed status.
          document_id: nil,
          # The parameters for generating a port-outs CSV report.
          params: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Identifies the type of report
          report_type: nil,
          # The current status of the report generation.
          status: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              document_id: String,
              params: Telnyx::Portouts::ExportPortoutsCsvReport,
              record_type: String,
              report_type:
                Telnyx::Portouts::PortoutReport::ReportType::TaggedSymbol,
              status: Telnyx::Portouts::PortoutReport::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        # Identifies the type of report
        module ReportType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Portouts::PortoutReport::ReportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPORT_PORTOUTS_CSV =
            T.let(
              :export_portouts_csv,
              Telnyx::Portouts::PortoutReport::ReportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::PortoutReport::ReportType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The current status of the report generation.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Portouts::PortoutReport::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Portouts::PortoutReport::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Portouts::PortoutReport::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Portouts::PortoutReport::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
