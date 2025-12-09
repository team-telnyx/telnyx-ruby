# typed: strong

module Telnyx
  module Models
    module PortingOrders
      class PhoneNumberConfigurationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies this phone number configuration
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Identifies the associated porting phone number
        sig { returns(T.nilable(String)) }
        attr_reader :porting_phone_number_id

        sig { params(porting_phone_number_id: String).void }
        attr_writer :porting_phone_number_id

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Identifies the associated user bundle
        sig { returns(T.nilable(String)) }
        attr_reader :user_bundle_id

        sig { params(user_bundle_id: String).void }
        attr_writer :user_bundle_id

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            created_at: Time,
            porting_phone_number_id: String,
            record_type: String,
            updated_at: Time,
            user_bundle_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies this phone number configuration
          id: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Identifies the associated porting phone number
          porting_phone_number_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil,
          # Identifies the associated user bundle
          user_bundle_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              porting_phone_number_id: String,
              record_type: String,
              updated_at: Time,
              user_bundle_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
