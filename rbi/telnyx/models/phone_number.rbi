# typed: strong

module Telnyx
  module Models
    class PhoneNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::PhoneNumber, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

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
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :bundle_id

      sig { params(bundle_id: String).void }
      attr_writer :bundle_id

      # Country code of the phone number
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # The ISO 3166-1 alpha-2 country code of the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :country_iso_alpha2

      sig { params(country_iso_alpha2: String).void }
      attr_writer :country_iso_alpha2

      # Phone number type
      sig do
        returns(T.nilable(Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol))
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type: Telnyx::PhoneNumber::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # True if all requirements are met for a phone number, false otherwise.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :requirements_met

      sig { params(requirements_met: T::Boolean).void }
      attr_writer :requirements_met

      # Status of document requirements (if applicable)
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol)
        )
      end
      attr_reader :requirements_status

      sig do
        params(
          requirements_status: Telnyx::PhoneNumber::RequirementsStatus::OrSymbol
        ).void
      end
      attr_writer :requirements_status

      # The status of the phone number in the order.
      sig { returns(T.nilable(Telnyx::PhoneNumber::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::PhoneNumber::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: String,
          bundle_id: String,
          country_code: String,
          country_iso_alpha2: String,
          phone_number: String,
          phone_number_type: Telnyx::PhoneNumber::PhoneNumberType::OrSymbol,
          record_type: String,
          regulatory_requirements:
            T::Array[
              Telnyx::SubNumberOrderRegulatoryRequirementWithValue::OrHash
            ],
          requirements_met: T::Boolean,
          requirements_status:
            Telnyx::PhoneNumber::RequirementsStatus::OrSymbol,
          status: Telnyx::PhoneNumber::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        bundle_id: nil,
        # Country code of the phone number
        country_code: nil,
        # The ISO 3166-1 alpha-2 country code of the phone number.
        country_iso_alpha2: nil,
        phone_number: nil,
        # Phone number type
        phone_number_type: nil,
        record_type: nil,
        regulatory_requirements: nil,
        # True if all requirements are met for a phone number, false otherwise.
        requirements_met: nil,
        # Status of document requirements (if applicable)
        requirements_status: nil,
        # The status of the phone number in the order.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            bundle_id: String,
            country_code: String,
            country_iso_alpha2: String,
            phone_number: String,
            phone_number_type:
              Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol,
            record_type: String,
            regulatory_requirements:
              T::Array[Telnyx::SubNumberOrderRegulatoryRequirementWithValue],
            requirements_met: T::Boolean,
            requirements_status:
              Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol,
            status: Telnyx::PhoneNumber::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Phone number type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PhoneNumber::PhoneNumberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(:local, Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol)
        MOBILE =
          T.let(:mobile, Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol)
        NATIONAL =
          T.let(:national, Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol)
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(:toll_free, Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumber::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of document requirements (if applicable)
      module RequirementsStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumber::RequirementsStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol)
        APPROVED =
          T.let(
            :approved,
            Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol
          )
        DELETED =
          T.let(:deleted, Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol)
        REQUIREMENT_INFO_EXCEPTION =
          T.let(
            :"requirement-info-exception",
            Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_PENDING =
          T.let(
            :"requirement-info-pending",
            Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_UNDER_REVIEW =
          T.let(
            :"requirement-info-under-review",
            Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumber::RequirementsStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The status of the phone number in the order.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PhoneNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::PhoneNumber::Status::TaggedSymbol)
        SUCCESS = T.let(:success, Telnyx::PhoneNumber::Status::TaggedSymbol)
        FAILURE = T.let(:failure, Telnyx::PhoneNumber::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::PhoneNumber::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
