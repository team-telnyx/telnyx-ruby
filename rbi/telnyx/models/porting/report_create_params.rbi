# typed: strong

module Telnyx
  module Models
    module Porting
      class ReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::ReportCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The parameters for generating a porting orders CSV report.
        sig { returns(Telnyx::Porting::ExportPortingOrdersCsvReport) }
        attr_reader :params

        sig do
          params(
            params: Telnyx::Porting::ExportPortingOrdersCsvReport::OrHash
          ).void
        end
        attr_writer :params

        # Identifies the type of report
        sig do
          returns(Telnyx::Porting::ReportCreateParams::ReportType::OrSymbol)
        end
        attr_accessor :report_type

        sig do
          params(
            params: Telnyx::Porting::ExportPortingOrdersCsvReport::OrHash,
            report_type:
              Telnyx::Porting::ReportCreateParams::ReportType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The parameters for generating a porting orders CSV report.
          params:,
          # Identifies the type of report
          report_type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              params: Telnyx::Porting::ExportPortingOrdersCsvReport,
              report_type:
                Telnyx::Porting::ReportCreateParams::ReportType::OrSymbol,
              request_options: Telnyx::RequestOptions
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
              T.all(Symbol, Telnyx::Porting::ReportCreateParams::ReportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPORT_PORTING_ORDERS_CSV =
            T.let(
              :export_porting_orders_csv,
              Telnyx::Porting::ReportCreateParams::ReportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Porting::ReportCreateParams::ReportType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
