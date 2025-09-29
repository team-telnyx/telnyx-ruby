# typed: strong

module Telnyx
  module Models
    PortingReport = Porting::PortingReport

    module Porting
      class PortingReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Porting::PortingReport, Telnyx::Internal::AnyHash)
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

        # The parameters for generating a porting orders CSV report.
        sig do
          returns(T.nilable(Telnyx::Porting::ExportPortingOrdersCsvReport))
        end
        attr_reader :params

        sig do
          params(
            params: Telnyx::Porting::ExportPortingOrdersCsvReport::OrHash
          ).void
        end
        attr_writer :params

        # Identifies the type of report
        sig do
          returns(
            T.nilable(Telnyx::Porting::PortingReport::ReportType::TaggedSymbol)
          )
        end
        attr_reader :report_type

        sig do
          params(
            report_type: Telnyx::Porting::PortingReport::ReportType::OrSymbol
          ).void
        end
        attr_writer :report_type

        # The current status of the report generation.
        sig do
          returns(
            T.nilable(Telnyx::Porting::PortingReport::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(status: Telnyx::Porting::PortingReport::Status::OrSymbol).void
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
            params: Telnyx::Porting::ExportPortingOrdersCsvReport::OrHash,
            record_type: String,
            report_type: Telnyx::Porting::PortingReport::ReportType::OrSymbol,
            status: Telnyx::Porting::PortingReport::Status::OrSymbol,
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
          # The parameters for generating a porting orders CSV report.
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
              params: Telnyx::Porting::ExportPortingOrdersCsvReport,
              record_type: String,
              report_type:
                Telnyx::Porting::PortingReport::ReportType::TaggedSymbol,
              status: Telnyx::Porting::PortingReport::Status::TaggedSymbol,
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
              T.all(Symbol, Telnyx::Porting::PortingReport::ReportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPORT_PORTING_ORDERS_CSV =
            T.let(
              :export_porting_orders_csv,
              Telnyx::Porting::PortingReport::ReportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Porting::PortingReport::ReportType::TaggedSymbol]
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
              T.all(Symbol, Telnyx::Porting::PortingReport::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Porting::PortingReport::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Porting::PortingReport::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Porting::PortingReport::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
