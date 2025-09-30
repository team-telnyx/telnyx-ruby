# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class AdditionalDocumentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrders::AdditionalDocumentListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[document_type]
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrders::AdditionalDocumentListParams::Filter
            )
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::AdditionalDocumentListParams::Page)
          )
        end
        attr_reader :page

        sig do
          params(
            page:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        # Consolidated sort parameter (deepObject style). Originally: sort[value]
        sig do
          returns(
            T.nilable(Telnyx::PortingOrders::AdditionalDocumentListParams::Sort)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::OrHash
          ).void
        end
        attr_writer :sort

        sig do
          params(
            filter:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::OrHash,
            page:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Page::OrHash,
            sort:
              Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated filter parameter (deepObject style). Originally:
          # filter[document_type]
          filter: nil,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter:
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter,
              page: Telnyx::PortingOrders::AdditionalDocumentListParams::Page,
              sort: Telnyx::PortingOrders::AdditionalDocumentListParams::Sort,
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
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter additional documents by a list of document types
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::OrSymbol
                ]
              )
            )
          end
          attr_reader :document_type

          sig do
            params(
              document_type:
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::OrSymbol
                ]
            ).void
          end
          attr_writer :document_type

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[document_type]
          sig do
            params(
              document_type:
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::OrSymbol
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter additional documents by a list of document types
            document_type: nil
          )
          end

          sig do
            override.returns(
              {
                document_type:
                  T::Array[
                    Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::OrSymbol
                  ]
              }
            )
          end
          def to_hash
          end

          module DocumentType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LOA =
              T.let(
                :loa,
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::TaggedSymbol
              )
            CSR =
              T.let(
                :csr,
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType::TaggedSymbol
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
                Telnyx::PortingOrders::AdditionalDocumentListParams::Page,
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

        class Sort < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort,
                Telnyx::Internal::AnyHash
              )
            end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          sig do
            returns(
              T.nilable(
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::OrSymbol
              )
            )
          end
          attr_reader :value

          sig do
            params(
              value:
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::OrSymbol
            ).void
          end
          attr_writer :value

          # Consolidated sort parameter (deepObject style). Originally: sort[value]
          sig do
            params(
              value:
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies the sort order for results. If not given, results are sorted by
            # created_at in descending order.
            value: nil
          )
          end

          sig do
            override.returns(
              {
                value:
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          module Value
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATED_AT =
              T.let(
                :created_at,
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::TaggedSymbol
              )
            CREATED_AT_DESC =
              T.let(
                :"-created_at",
                Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value::TaggedSymbol
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
