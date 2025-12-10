# typed: strong

module Telnyx
  module Models
    class InvoiceListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::InvoiceListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::InvoiceListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::InvoiceListParams::Page::OrHash).void }
      attr_writer :page

      # Specifies the sort order for results.
      sig { returns(T.nilable(Telnyx::InvoiceListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::InvoiceListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          page: Telnyx::InvoiceListParams::Page::OrHash,
          sort: Telnyx::InvoiceListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Telnyx::InvoiceListParams::Page,
            sort: Telnyx::InvoiceListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InvoiceListParams::Page, Telnyx::Internal::AnyHash)
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

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
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

      # Specifies the sort order for results.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InvoiceListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERIOD_START =
          T.let(:period_start, Telnyx::InvoiceListParams::Sort::TaggedSymbol)
        PERIOD_START_DESC =
          T.let(:"-period_start", Telnyx::InvoiceListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InvoiceListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
