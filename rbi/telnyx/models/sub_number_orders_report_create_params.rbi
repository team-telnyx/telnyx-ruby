# typed: strong

module Telnyx
  module Models
    class SubNumberOrdersReportCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SubNumberOrdersReportCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter by country code
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # Filter for orders created after this date
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gt

      sig { params(created_at_gt: Time).void }
      attr_writer :created_at_gt

      # Filter for orders created before this date
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lt

      sig { params(created_at_lt: Time).void }
      attr_writer :created_at_lt

      # Filter by customer reference
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Filter by specific order request ID
      sig { returns(T.nilable(String)) }
      attr_reader :order_request_id

      sig { params(order_request_id: String).void }
      attr_writer :order_request_id

      # Filter by order status
      sig do
        returns(
          T.nilable(Telnyx::SubNumberOrdersReportCreateParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::SubNumberOrdersReportCreateParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          country_code: String,
          created_at_gt: Time,
          created_at_lt: Time,
          customer_reference: String,
          order_request_id: String,
          status: Telnyx::SubNumberOrdersReportCreateParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by country code
        country_code: nil,
        # Filter for orders created after this date
        created_at_gt: nil,
        # Filter for orders created before this date
        created_at_lt: nil,
        # Filter by customer reference
        customer_reference: nil,
        # Filter by specific order request ID
        order_request_id: nil,
        # Filter by order status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            country_code: String,
            created_at_gt: Time,
            created_at_lt: Time,
            customer_reference: String,
            order_request_id: String,
            status: Telnyx::SubNumberOrdersReportCreateParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by order status
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SubNumberOrdersReportCreateParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::SubNumberOrdersReportCreateParams::Status::TaggedSymbol
          )
        SUCCESS =
          T.let(
            :success,
            Telnyx::SubNumberOrdersReportCreateParams::Status::TaggedSymbol
          )
        FAILURE =
          T.let(
            :failure,
            Telnyx::SubNumberOrdersReportCreateParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SubNumberOrdersReportCreateParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
