# typed: strong

module Telnyx
  module Models
    class NumberReservation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberReservation, Telnyx::Internal::AnyHash)
        end

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(T::Array[Telnyx::ReservedPhoneNumber])) }
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[Telnyx::ReservedPhoneNumber::OrHash]
        ).void
      end
      attr_writer :phone_numbers

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An ISO 8901 datetime string denoting when the numbers reservation was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The status of the entire reservation.
      sig do
        returns(T.nilable(Telnyx::NumberReservation::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Telnyx::NumberReservation::Status::OrSymbol).void }
      attr_writer :status

      # An ISO 8901 datetime string for when the number reservation was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          customer_reference: String,
          phone_numbers: T::Array[Telnyx::ReservedPhoneNumber::OrHash],
          record_type: String,
          status: Telnyx::NumberReservation::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # An ISO 8901 datetime string denoting when the numbers reservation was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        phone_numbers: nil,
        record_type: nil,
        # The status of the entire reservation.
        status: nil,
        # An ISO 8901 datetime string for when the number reservation was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer_reference: String,
            phone_numbers: T::Array[Telnyx::ReservedPhoneNumber],
            record_type: String,
            status: Telnyx::NumberReservation::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The status of the entire reservation.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NumberReservation::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::NumberReservation::Status::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::NumberReservation::Status::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::NumberReservation::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::NumberReservation::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
