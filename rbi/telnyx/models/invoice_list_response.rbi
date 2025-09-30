# typed: strong

module Telnyx
  module Models
    class InvoiceListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::InvoiceListResponse, Telnyx::Internal::AnyHash)
        end

      sig do
        returns(T.nilable(T::Array[Telnyx::Models::InvoiceListResponse::Data]))
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::InvoiceListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::InvoiceListResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::InvoiceListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::InvoiceListResponse::Data::OrHash],
          meta: Telnyx::Models::InvoiceListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::InvoiceListResponse::Data],
            meta: Telnyx::Models::InvoiceListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InvoiceListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :file_id

        sig { params(file_id: String).void }
        attr_writer :file_id

        sig { returns(T.nilable(String)) }
        attr_reader :invoice_id

        sig { params(invoice_id: String).void }
        attr_writer :invoice_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :paid

        sig { params(paid: T::Boolean).void }
        attr_writer :paid

        sig { returns(T.nilable(Date)) }
        attr_reader :period_end

        sig { params(period_end: Date).void }
        attr_writer :period_end

        sig { returns(T.nilable(Date)) }
        attr_reader :period_start

        sig { params(period_start: Date).void }
        attr_writer :period_start

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            file_id: String,
            invoice_id: String,
            paid: T::Boolean,
            period_end: Date,
            period_start: Date,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          file_id: nil,
          invoice_id: nil,
          paid: nil,
          period_end: nil,
          period_start: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              file_id: String,
              invoice_id: String,
              paid: T::Boolean,
              period_end: Date,
              period_start: Date,
              url: String
            }
          )
        end
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::InvoiceListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          page_number: nil,
          page_size: nil,
          total_pages: nil,
          total_results: nil
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
