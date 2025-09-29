# typed: strong

module Telnyx
  module Models
    class NumberBlockOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberBlockOrder, Telnyx::Internal::AnyHash)
        end

      # Identifies the connection associated to all numbers in the phone number block.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Identifies the messaging profile associated to all numbers in the phone number
      # block.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # The phone number range included in the block.
      sig { returns(T.nilable(Integer)) }
      attr_reader :range

      sig { params(range: Integer).void }
      attr_writer :range

      # Starting phone number block
      sig { returns(T.nilable(String)) }
      attr_reader :starting_number

      sig { params(starting_number: String).void }
      attr_writer :starting_number

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An ISO 8901 datetime string denoting when the number order was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The count of phone numbers in the number order.
      sig { returns(T.nilable(Integer)) }
      attr_reader :phone_numbers_count

      sig { params(phone_numbers_count: Integer).void }
      attr_writer :phone_numbers_count

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # True if all requirements are met for every phone number, false otherwise.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :requirements_met

      sig { params(requirements_met: T::Boolean).void }
      attr_writer :requirements_met

      # The status of the order.
      sig { returns(T.nilable(Telnyx::NumberBlockOrder::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::NumberBlockOrder::Status::OrSymbol).void }
      attr_writer :status

      # An ISO 8901 datetime string for when the number order was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          connection_id: String,
          created_at: Time,
          customer_reference: String,
          messaging_profile_id: String,
          phone_numbers_count: Integer,
          range: Integer,
          record_type: String,
          requirements_met: T::Boolean,
          starting_number: String,
          status: Telnyx::NumberBlockOrder::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        # Identifies the connection associated to all numbers in the phone number block.
        connection_id: nil,
        # An ISO 8901 datetime string denoting when the number order was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the messaging profile associated to all numbers in the phone number
        # block.
        messaging_profile_id: nil,
        # The count of phone numbers in the number order.
        phone_numbers_count: nil,
        # The phone number range included in the block.
        range: nil,
        record_type: nil,
        # True if all requirements are met for every phone number, false otherwise.
        requirements_met: nil,
        # Starting phone number block
        starting_number: nil,
        # The status of the order.
        status: nil,
        # An ISO 8901 datetime string for when the number order was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            connection_id: String,
            created_at: Time,
            customer_reference: String,
            messaging_profile_id: String,
            phone_numbers_count: Integer,
            range: Integer,
            record_type: String,
            requirements_met: T::Boolean,
            starting_number: String,
            status: Telnyx::NumberBlockOrder::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # The status of the order.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NumberBlockOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::NumberBlockOrder::Status::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::NumberBlockOrder::Status::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::NumberBlockOrder::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::NumberBlockOrder::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
