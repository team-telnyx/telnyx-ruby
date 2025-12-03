# typed: strong

module Telnyx
  module Models
    class InvoiceListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::InvoiceListResponse, Telnyx::Internal::AnyHash)
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
  end
end
