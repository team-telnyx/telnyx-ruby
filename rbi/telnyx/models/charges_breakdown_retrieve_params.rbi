# typed: strong

module Telnyx
  module Models
    class ChargesBreakdownRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ChargesBreakdownRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
      sig { returns(Date) }
      attr_accessor :start_date

      # End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not
      # provided, defaults to start_date + 1 month. The date is exclusive, data for the
      # end_date itself is not included in the report. The interval between start_date
      # and end_date cannot exceed 31 days.
      sig { returns(T.nilable(Date)) }
      attr_reader :end_date

      sig { params(end_date: Date).void }
      attr_writer :end_date

      # Response format
      sig do
        returns(
          T.nilable(Telnyx::ChargesBreakdownRetrieveParams::Format::OrSymbol)
        )
      end
      attr_reader :format_

      sig do
        params(
          format_: Telnyx::ChargesBreakdownRetrieveParams::Format::OrSymbol
        ).void
      end
      attr_writer :format_

      sig do
        params(
          start_date: Date,
          end_date: Date,
          format_: Telnyx::ChargesBreakdownRetrieveParams::Format::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Start date for the charges breakdown in ISO date format (YYYY-MM-DD)
        start_date:,
        # End date for the charges breakdown in ISO date format (YYYY-MM-DD). If not
        # provided, defaults to start_date + 1 month. The date is exclusive, data for the
        # end_date itself is not included in the report. The interval between start_date
        # and end_date cannot exceed 31 days.
        end_date: nil,
        # Response format
        format_: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            start_date: Date,
            end_date: Date,
            format_: Telnyx::ChargesBreakdownRetrieveParams::Format::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Response format
      module Format
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ChargesBreakdownRetrieveParams::Format)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JSON =
          T.let(
            :json,
            Telnyx::ChargesBreakdownRetrieveParams::Format::TaggedSymbol
          )
        CSV =
          T.let(
            :csv,
            Telnyx::ChargesBreakdownRetrieveParams::Format::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ChargesBreakdownRetrieveParams::Format::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
