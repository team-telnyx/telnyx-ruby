# typed: strong

module Telnyx
  module Models
    class ReservedPhoneNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ReservedPhoneNumber, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An ISO 8901 datetime string denoting when the individual number reservation was
      # created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Errors the reservation could happen upon
      sig { returns(T.nilable(String)) }
      attr_reader :errors

      sig { params(errors: String).void }
      attr_writer :errors

      # An ISO 8901 datetime string for when the individual number reservation is going
      # to expire
      sig { returns(T.nilable(Time)) }
      attr_reader :expired_at

      sig { params(expired_at: Time).void }
      attr_writer :expired_at

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The status of the phone number's reservation.
      sig { returns(T.nilable(Telnyx::ReservedPhoneNumber::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::ReservedPhoneNumber::Status::OrSymbol).void }
      attr_writer :status

      # An ISO 8901 datetime string for when the the individual number reservation was
      # updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          errors: String,
          expired_at: Time,
          phone_number: String,
          record_type: String,
          status: Telnyx::ReservedPhoneNumber::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # An ISO 8901 datetime string denoting when the individual number reservation was
        # created.
        created_at: nil,
        # Errors the reservation could happen upon
        errors: nil,
        # An ISO 8901 datetime string for when the individual number reservation is going
        # to expire
        expired_at: nil,
        phone_number: nil,
        record_type: nil,
        # The status of the phone number's reservation.
        status: nil,
        # An ISO 8901 datetime string for when the the individual number reservation was
        # updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            errors: String,
            expired_at: Time,
            phone_number: String,
            record_type: String,
            status: Telnyx::ReservedPhoneNumber::Status::OrSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The status of the phone number's reservation.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ReservedPhoneNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::ReservedPhoneNumber::Status::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::ReservedPhoneNumber::Status::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::ReservedPhoneNumber::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ReservedPhoneNumber::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
