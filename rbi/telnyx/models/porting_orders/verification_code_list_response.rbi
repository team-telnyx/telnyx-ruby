# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class VerificationCodeListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::VerificationCodeListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies this porting verification code
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # E164 formatted phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Identifies the associated porting order
        sig { returns(T.nilable(String)) }
        attr_reader :porting_order_id

        sig { params(porting_order_id: String).void }
        attr_writer :porting_order_id

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Indicates whether the verification code has been verified
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :verified

        sig { params(verified: T::Boolean).void }
        attr_writer :verified

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            created_at: Time,
            phone_number: String,
            porting_order_id: String,
            record_type: String,
            updated_at: Time,
            verified: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies this porting verification code
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # E164 formatted phone number
          phone_number: nil,
          # Identifies the associated porting order
          porting_order_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil,
          # Indicates whether the verification code has been verified
          verified: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              phone_number: String,
              porting_order_id: String,
              record_type: String,
              updated_at: Time,
              verified: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
