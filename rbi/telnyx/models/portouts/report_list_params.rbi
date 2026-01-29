# typed: strong

module Telnyx
  module Models
    module Portouts
      class ReportListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Portouts::ReportListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[report_type], filter[status]
        sig { returns(T.nilable(Telnyx::Portouts::ReportListParams::Filter)) }
        attr_reader :filter

        sig do
          params(
            filter: Telnyx::Portouts::ReportListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter: Telnyx::Portouts::ReportListParams::Filter::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          filter: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Portouts::ReportListParams::Filter,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Portouts::ReportListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter reports of a specific type
          sig do
            returns(
              T.nilable(
                Telnyx::Portouts::ReportListParams::Filter::ReportType::OrSymbol
              )
            )
          end
          attr_reader :report_type

          sig do
            params(
              report_type:
                Telnyx::Portouts::ReportListParams::Filter::ReportType::OrSymbol
            ).void
          end
          attr_writer :report_type

          # Filter reports of a specific status
          sig do
            returns(
              T.nilable(
                Telnyx::Portouts::ReportListParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Portouts::ReportListParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          sig do
            params(
              report_type:
                Telnyx::Portouts::ReportListParams::Filter::ReportType::OrSymbol,
              status:
                Telnyx::Portouts::ReportListParams::Filter::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter reports of a specific type
            report_type: nil,
            # Filter reports of a specific status
            status: nil
          )
          end

          sig do
            override.returns(
              {
                report_type:
                  Telnyx::Portouts::ReportListParams::Filter::ReportType::OrSymbol,
                status:
                  Telnyx::Portouts::ReportListParams::Filter::Status::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter reports of a specific type
          module ReportType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Portouts::ReportListParams::Filter::ReportType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXPORT_PORTOUTS_CSV =
              T.let(
                :export_portouts_csv,
                Telnyx::Portouts::ReportListParams::Filter::ReportType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::ReportListParams::Filter::ReportType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Filter reports of a specific status
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Portouts::ReportListParams::Filter::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Portouts::ReportListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Portouts::ReportListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Portouts::ReportListParams::Filter::Status::TaggedSymbol
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
end
