# typed: strong

module Telnyx
  module Models
    module Porting
      class ReportListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Porting::ReportListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[report_type], filter[status]
        sig { returns(T.nilable(Telnyx::Porting::ReportListParams::Filter)) }
        attr_reader :filter

        sig do
          params(filter: Telnyx::Porting::ReportListParams::Filter::OrHash).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { returns(T.nilable(Telnyx::Porting::ReportListParams::Page)) }
        attr_reader :page

        sig do
          params(page: Telnyx::Porting::ReportListParams::Page::OrHash).void
        end
        attr_writer :page

        sig do
          params(
            filter: Telnyx::Porting::ReportListParams::Filter::OrHash,
            page: Telnyx::Porting::ReportListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter: Telnyx::Porting::ReportListParams::Filter,
              page: Telnyx::Porting::ReportListParams::Page,
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
                Telnyx::Porting::ReportListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter reports of a specific type
          sig do
            returns(
              T.nilable(
                Telnyx::Porting::ReportListParams::Filter::ReportType::OrSymbol
              )
            )
          end
          attr_reader :report_type

          sig do
            params(
              report_type:
                Telnyx::Porting::ReportListParams::Filter::ReportType::OrSymbol
            ).void
          end
          attr_writer :report_type

          # Filter reports of a specific status
          sig do
            returns(
              T.nilable(
                Telnyx::Porting::ReportListParams::Filter::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Porting::ReportListParams::Filter::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[report_type], filter[status]
          sig do
            params(
              report_type:
                Telnyx::Porting::ReportListParams::Filter::ReportType::OrSymbol,
              status:
                Telnyx::Porting::ReportListParams::Filter::Status::OrSymbol
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
                  Telnyx::Porting::ReportListParams::Filter::ReportType::OrSymbol,
                status:
                  Telnyx::Porting::ReportListParams::Filter::Status::OrSymbol
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
                  Telnyx::Porting::ReportListParams::Filter::ReportType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXPORT_PORTING_ORDERS_CSV =
              T.let(
                :export_porting_orders_csv,
                Telnyx::Porting::ReportListParams::Filter::ReportType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Porting::ReportListParams::Filter::ReportType::TaggedSymbol
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
                T.all(Symbol, Telnyx::Porting::ReportListParams::Filter::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Porting::ReportListParams::Filter::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Porting::ReportListParams::Filter::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Porting::ReportListParams::Filter::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::ReportListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load
            number: nil,
            # The size of the page
            size: nil
          )
          end

          sig { override.returns({ number: Integer, size: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
