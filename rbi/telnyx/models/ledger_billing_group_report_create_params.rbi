# typed: strong

module Telnyx
  module Models
    class LedgerBillingGroupReportCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::LedgerBillingGroupReportCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Month of the ledger billing group report
      sig { returns(T.nilable(Integer)) }
      attr_reader :month

      sig { params(month: Integer).void }
      attr_writer :month

      # Year of the ledger billing group report
      sig { returns(T.nilable(Integer)) }
      attr_reader :year

      sig { params(year: Integer).void }
      attr_writer :year

      sig do
        params(
          month: Integer,
          year: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Month of the ledger billing group report
        month: nil,
        # Year of the ledger billing group report
        year: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            month: Integer,
            year: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
