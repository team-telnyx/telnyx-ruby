# typed: strong

module Telnyx
  module Models
    class ChargesSummaryRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ChargesSummaryRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # End date for the charges summary in ISO date format (YYYY-MM-DD). The date is
      # exclusive, data for the end_date itself is not included in the report. The
      # interval between start_date and end_date cannot exceed 31 days.
      sig { returns(Date) }
      attr_accessor :end_date

      # Start date for the charges summary in ISO date format (YYYY-MM-DD)
      sig { returns(Date) }
      attr_accessor :start_date

      sig do
        params(
          end_date: Date,
          start_date: Date,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # End date for the charges summary in ISO date format (YYYY-MM-DD). The date is
        # exclusive, data for the end_date itself is not included in the report. The
        # interval between start_date and end_date cannot exceed 31 days.
        end_date:,
        # Start date for the charges summary in ISO date format (YYYY-MM-DD)
        start_date:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            end_date: Date,
            start_date: Date,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
