# typed: strong

module Telnyx
  module Models
    module Portouts
      class ReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Portouts::ReportCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The parameters for generating a port-outs CSV report.
        sig { returns(Telnyx::Portouts::ExportPortoutsCsvReport) }
        attr_reader :params

        sig do
          params(params: Telnyx::Portouts::ExportPortoutsCsvReport::OrHash).void
        end
        attr_writer :params

        # Identifies the type of report
        sig do
          returns(Telnyx::Portouts::ReportCreateParams::ReportType::OrSymbol)
        end
        attr_accessor :report_type

        sig do
          params(
            params: Telnyx::Portouts::ExportPortoutsCsvReport::OrHash,
            report_type:
              Telnyx::Portouts::ReportCreateParams::ReportType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The parameters for generating a port-outs CSV report.
          params:,
          # Identifies the type of report
          report_type:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              params: Telnyx::Portouts::ExportPortoutsCsvReport,
              report_type:
                Telnyx::Portouts::ReportCreateParams::ReportType::OrSymbol,
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
              T.all(Symbol, Telnyx::Portouts::ReportCreateParams::ReportType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPORT_PORTOUTS_CSV =
            T.let(
              :export_portouts_csv,
              Telnyx::Portouts::ReportCreateParams::ReportType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Portouts::ReportCreateParams::ReportType::TaggedSymbol
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
