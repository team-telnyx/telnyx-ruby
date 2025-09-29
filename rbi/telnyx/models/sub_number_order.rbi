# typed: strong

module Telnyx
  module Models
    class SubNumberOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SubNumberOrder, Telnyx::Internal::AnyHash)
        end

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig do
        returns(
          T.nilable(Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol)
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type: Telnyx::SubNumberOrder::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      sig do
        returns(
          T.nilable(T::Array[Telnyx::SubNumberOrderRegulatoryRequirement])
        )
      end
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[Telnyx::SubNumberOrderRegulatoryRequirement::OrHash]
        ).void
      end
      attr_writer :regulatory_requirements

      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # An ISO 8901 datetime string denoting when the number order was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # True if the sub number order is a block sub number order
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_block_sub_number_order

      sig { params(is_block_sub_number_order: T::Boolean).void }
      attr_writer :is_block_sub_number_order

      sig { returns(T.nilable(String)) }
      attr_reader :order_request_id

      sig { params(order_request_id: String).void }
      attr_writer :order_request_id

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
      sig { returns(T.nilable(Telnyx::SubNumberOrder::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::SubNumberOrder::Status::OrSymbol).void }
      attr_writer :status

      # An ISO 8901 datetime string for when the number order was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          country_code: String,
          created_at: Time,
          customer_reference: String,
          is_block_sub_number_order: T::Boolean,
          order_request_id: String,
          phone_number_type: Telnyx::SubNumberOrder::PhoneNumberType::OrSymbol,
          phone_numbers_count: Integer,
          record_type: String,
          regulatory_requirements:
            T::Array[Telnyx::SubNumberOrderRegulatoryRequirement::OrHash],
          requirements_met: T::Boolean,
          status: Telnyx::SubNumberOrder::Status::OrSymbol,
          updated_at: Time,
          user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        country_code: nil,
        # An ISO 8901 datetime string denoting when the number order was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # True if the sub number order is a block sub number order
        is_block_sub_number_order: nil,
        order_request_id: nil,
        phone_number_type: nil,
        # The count of phone numbers in the number order.
        phone_numbers_count: nil,
        record_type: nil,
        regulatory_requirements: nil,
        # True if all requirements are met for every phone number, false otherwise.
        requirements_met: nil,
        # The status of the order.
        status: nil,
        # An ISO 8901 datetime string for when the number order was updated.
        updated_at: nil,
        user_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country_code: String,
            created_at: Time,
            customer_reference: String,
            is_block_sub_number_order: T::Boolean,
            order_request_id: String,
            phone_number_type:
              Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol,
            phone_numbers_count: Integer,
            record_type: String,
            regulatory_requirements:
              T::Array[Telnyx::SubNumberOrderRegulatoryRequirement],
            requirements_met: T::Boolean,
            status: Telnyx::SubNumberOrder::Status::TaggedSymbol,
            updated_at: Time,
            user_id: String
          }
        )
      end
      def to_hash
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SubNumberOrder::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(:local, Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol)
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(:mobile, Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol)
        NATIONAL =
          T.let(
            :national,
            Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::SubNumberOrder::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The status of the order.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SubNumberOrder::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::SubNumberOrder::Status::TaggedSymbol)
        SUCCESS = T.let(:success, Telnyx::SubNumberOrder::Status::TaggedSymbol)
        FAILURE = T.let(:failure, Telnyx::SubNumberOrder::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::SubNumberOrder::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
