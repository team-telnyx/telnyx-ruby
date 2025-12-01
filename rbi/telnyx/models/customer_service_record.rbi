# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecord < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CustomerServiceRecord, Telnyx::Internal::AnyHash)
        end

      # The error message in case status is `failed`. This field would be null in case
      # of `pending` or `completed` status.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # The phone number of the customer service record.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The result of the CSR request. This field would be null in case of `pending` or
      # `failed` status.
      sig { returns(T.nilable(Telnyx::CustomerServiceRecord::Result)) }
      attr_reader :result

      sig do
        params(
          result: T.nilable(Telnyx::CustomerServiceRecord::Result::OrHash)
        ).void
      end
      attr_writer :result

      # The status of the customer service record
      sig do
        returns(T.nilable(Telnyx::CustomerServiceRecord::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::CustomerServiceRecord::Status::OrSymbol).void
      end
      attr_writer :status

      # Uniquely identifies this customer service record
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          error_message: T.nilable(String),
          phone_number: String,
          record_type: String,
          result: T.nilable(Telnyx::CustomerServiceRecord::Result::OrHash),
          status: Telnyx::CustomerServiceRecord::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies this customer service record
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # The error message in case status is `failed`. This field would be null in case
        # of `pending` or `completed` status.
        error_message: nil,
        # The phone number of the customer service record.
        phone_number: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The result of the CSR request. This field would be null in case of `pending` or
        # `failed` status.
        result: nil,
        # The status of the customer service record
        status: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            error_message: T.nilable(String),
            phone_number: String,
            record_type: String,
            result: T.nilable(Telnyx::CustomerServiceRecord::Result),
            status: Telnyx::CustomerServiceRecord::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Result < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecord::Result,
              Telnyx::Internal::AnyHash
            )
          end

        # The address of the customer service record
        sig do
          returns(T.nilable(Telnyx::CustomerServiceRecord::Result::Address))
        end
        attr_reader :address

        sig do
          params(
            address: Telnyx::CustomerServiceRecord::Result::Address::OrHash
          ).void
        end
        attr_writer :address

        # The admin of the customer service record.
        sig { returns(T.nilable(Telnyx::CustomerServiceRecord::Result::Admin)) }
        attr_reader :admin

        sig do
          params(
            admin: Telnyx::CustomerServiceRecord::Result::Admin::OrHash
          ).void
        end
        attr_writer :admin

        # The associated phone numbers of the customer service record.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :associated_phone_numbers

        sig { params(associated_phone_numbers: T::Array[String]).void }
        attr_writer :associated_phone_numbers

        # The name of the carrier that the customer service record is for.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier_name

        sig { params(carrier_name: String).void }
        attr_writer :carrier_name

        # The result of the CSR request. This field would be null in case of `pending` or
        # `failed` status.
        sig do
          params(
            address: Telnyx::CustomerServiceRecord::Result::Address::OrHash,
            admin: Telnyx::CustomerServiceRecord::Result::Admin::OrHash,
            associated_phone_numbers: T::Array[String],
            carrier_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The address of the customer service record
          address: nil,
          # The admin of the customer service record.
          admin: nil,
          # The associated phone numbers of the customer service record.
          associated_phone_numbers: nil,
          # The name of the carrier that the customer service record is for.
          carrier_name: nil
        )
        end

        sig do
          override.returns(
            {
              address: Telnyx::CustomerServiceRecord::Result::Address,
              admin: Telnyx::CustomerServiceRecord::Result::Admin,
              associated_phone_numbers: T::Array[String],
              carrier_name: String
            }
          )
        end
        def to_hash
        end

        class Address < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomerServiceRecord::Result::Address,
                Telnyx::Internal::AnyHash
              )
            end

          # The state of the address
          sig { returns(T.nilable(String)) }
          attr_reader :administrative_area

          sig { params(administrative_area: String).void }
          attr_writer :administrative_area

          # The full address
          sig { returns(T.nilable(String)) }
          attr_reader :full_address

          sig { params(full_address: String).void }
          attr_writer :full_address

          # The city of the address
          sig { returns(T.nilable(String)) }
          attr_reader :locality

          sig { params(locality: String).void }
          attr_writer :locality

          # The zip code of the address
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # The street address
          sig { returns(T.nilable(String)) }
          attr_reader :street_address

          sig { params(street_address: String).void }
          attr_writer :street_address

          # The address of the customer service record
          sig do
            params(
              administrative_area: String,
              full_address: String,
              locality: String,
              postal_code: String,
              street_address: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The state of the address
            administrative_area: nil,
            # The full address
            full_address: nil,
            # The city of the address
            locality: nil,
            # The zip code of the address
            postal_code: nil,
            # The street address
            street_address: nil
          )
          end

          sig do
            override.returns(
              {
                administrative_area: String,
                full_address: String,
                locality: String,
                postal_code: String,
                street_address: String
              }
            )
          end
          def to_hash
          end
        end

        class Admin < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomerServiceRecord::Result::Admin,
                Telnyx::Internal::AnyHash
              )
            end

          # The account number of the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :account_number

          sig { params(account_number: String).void }
          attr_writer :account_number

          # The authorized person name of the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :authorized_person_name

          sig { params(authorized_person_name: String).void }
          attr_writer :authorized_person_name

          # The billing phone number of the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :billing_phone_number

          sig { params(billing_phone_number: String).void }
          attr_writer :billing_phone_number

          # The name of the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The admin of the customer service record.
          sig do
            params(
              account_number: String,
              authorized_person_name: String,
              billing_phone_number: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The account number of the customer service record.
            account_number: nil,
            # The authorized person name of the customer service record.
            authorized_person_name: nil,
            # The billing phone number of the customer service record.
            billing_phone_number: nil,
            # The name of the customer service record.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                account_number: String,
                authorized_person_name: String,
                billing_phone_number: String,
                name: String
              }
            )
          end
          def to_hash
          end
        end
      end

      # The status of the customer service record
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CustomerServiceRecord::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::CustomerServiceRecord::Status::TaggedSymbol)
        COMPLETED =
          T.let(:completed, Telnyx::CustomerServiceRecord::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::CustomerServiceRecord::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CustomerServiceRecord::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
