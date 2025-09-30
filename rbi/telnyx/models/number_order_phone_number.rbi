# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberOrderPhoneNumber, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      sig { returns(T.nilable(Time)) }
      attr_reader :deadline

      sig { params(deadline: Time).void }
      attr_writer :deadline

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_block_number

      sig { params(is_block_number: T::Boolean).void }
      attr_writer :is_block_number

      sig { returns(T.nilable(String)) }
      attr_reader :locality

      sig { params(locality: String).void }
      attr_writer :locality

      sig { returns(T.nilable(String)) }
      attr_reader :order_request_id

      sig { params(order_request_id: String).void }
      attr_writer :order_request_id

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      sig do
        returns(
          T.nilable(
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::SubNumberOrderRegulatoryRequirementWithValue]
          )
        )
      end
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::OrHash
            ]
        ).void
      end
      attr_writer :regulatory_requirements

      sig { returns(T.nilable(String)) }
      attr_reader :sub_number_order_id

      sig { params(sub_number_order_id: String).void }
      attr_writer :sub_number_order_id

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :bundle_id

      sig { params(bundle_id: String).void }
      attr_writer :bundle_id

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # True if all requirements are met for a phone number, false otherwise.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :requirements_met

      sig { params(requirements_met: T::Boolean).void }
      attr_writer :requirements_met

      # Status of requirements (if applicable)
      sig do
        returns(
          T.nilable(
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        )
      end
      attr_reader :requirements_status

      sig do
        params(
          requirements_status:
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::OrSymbol
        ).void
      end
      attr_writer :requirements_status

      # The status of the phone number in the order.
      sig do
        returns(T.nilable(Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::NumberOrderPhoneNumber::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          bundle_id: String,
          country_code: String,
          deadline: Time,
          is_block_number: T::Boolean,
          locality: String,
          order_request_id: String,
          phone_number: String,
          phone_number_type:
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::OrSymbol,
          record_type: String,
          regulatory_requirements:
            T::Array[
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::OrHash
            ],
          requirements_met: T::Boolean,
          requirements_status:
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::OrSymbol,
          status: Telnyx::NumberOrderPhoneNumber::Status::OrSymbol,
          sub_number_order_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        bundle_id: nil,
        country_code: nil,
        deadline: nil,
        is_block_number: nil,
        locality: nil,
        order_request_id: nil,
        phone_number: nil,
        phone_number_type: nil,
        record_type: nil,
        regulatory_requirements: nil,
        # True if all requirements are met for a phone number, false otherwise.
        requirements_met: nil,
        # Status of requirements (if applicable)
        requirements_status: nil,
        # The status of the phone number in the order.
        status: nil,
        sub_number_order_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bundle_id: String,
            country_code: String,
            deadline: Time,
            is_block_number: T::Boolean,
            locality: String,
            order_request_id: String,
            phone_number: String,
            phone_number_type:
              Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol,
            record_type: String,
            regulatory_requirements:
              T::Array[Telnyx::SubNumberOrderRegulatoryRequirementWithValue],
            requirements_met: T::Boolean,
            requirements_status:
              Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol,
            status: Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol,
            sub_number_order_id: String
          }
        )
      end
      def to_hash
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::NumberOrderPhoneNumber::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::NumberOrderPhoneNumber::PhoneNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Status of requirements (if applicable)
      module RequirementsStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::NumberOrderPhoneNumber::RequirementsStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_EXCEPTION =
          T.let(
            :"requirement-info-exception",
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_PENDING =
          T.let(
            :"requirement-info-pending",
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_UNDER_REVIEW =
          T.let(
            :"requirement-info-under-review",
            Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::NumberOrderPhoneNumber::RequirementsStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the phone number in the order.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NumberOrderPhoneNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol)
        SUCCESS =
          T.let(:success, Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol)
        FAILURE =
          T.let(:failure, Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::NumberOrderPhoneNumber::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
