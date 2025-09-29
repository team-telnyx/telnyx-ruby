# typed: strong

module Telnyx
  module Models
    class SubNumberOrderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SubNumberOrderListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[status],
      # filter[order_request_id], filter[country_code], filter[phone_number_type],
      # filter[phone_numbers_count]
      sig { returns(T.nilable(Telnyx::SubNumberOrderListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::SubNumberOrderListParams::Filter::OrHash).void
      end
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::SubNumberOrderListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[order_request_id], filter[country_code], filter[phone_number_type],
        # filter[phone_numbers_count]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::SubNumberOrderListParams::Filter,
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
              Telnyx::SubNumberOrderListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO alpha-2 country code.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # ID of the number order the sub number order belongs to
        sig { returns(T.nilable(String)) }
        attr_reader :order_request_id

        sig { params(order_request_id: String).void }
        attr_writer :order_request_id

        # Phone Number Type
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number_type

        sig { params(phone_number_type: String).void }
        attr_writer :phone_number_type

        # Amount of numbers in the sub number order
        sig { returns(T.nilable(Integer)) }
        attr_reader :phone_numbers_count

        sig { params(phone_numbers_count: Integer).void }
        attr_writer :phone_numbers_count

        # Filter sub number orders by status.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[order_request_id], filter[country_code], filter[phone_number_type],
        # filter[phone_numbers_count]
        sig do
          params(
            country_code: String,
            order_request_id: String,
            phone_number_type: String,
            phone_numbers_count: Integer,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ISO alpha-2 country code.
          country_code: nil,
          # ID of the number order the sub number order belongs to
          order_request_id: nil,
          # Phone Number Type
          phone_number_type: nil,
          # Amount of numbers in the sub number order
          phone_numbers_count: nil,
          # Filter sub number orders by status.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              country_code: String,
              order_request_id: String,
              phone_number_type: String,
              phone_numbers_count: Integer,
              status: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
