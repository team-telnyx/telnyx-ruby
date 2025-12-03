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

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Specifies the sort order for results.
      sig { returns(T.nilable(Telnyx::InvoiceListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::InvoiceListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::InvoiceListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::InvoiceListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
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
