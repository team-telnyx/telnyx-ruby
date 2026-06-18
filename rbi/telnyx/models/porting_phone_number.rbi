# typed: strong

module Telnyx
  module Models
    class PortingPhoneNumber < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingPhoneNumber, Telnyx::Internal::AnyHash)
        end

      # Activation status
      sig do
        returns(T.nilable(Telnyx::PortingOrderActivationStatus::TaggedSymbol))
      end
      attr_reader :activation_status

      sig do
        params(
          activation_status: Telnyx::PortingOrderActivationStatus::OrSymbol
        ).void
      end
      attr_writer :activation_status

      # E164 formatted phone number
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The type of the phone number
      sig do
        returns(
          T.nilable(Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol)
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::PortingPhoneNumber::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      # Specifies whether Telnyx is able to confirm portability this number in the
      # United States & Canada. International phone numbers are provisional by default.
      sig do
        returns(
          T.nilable(Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol)
        )
      end
      attr_reader :portability_status

      sig do
        params(
          portability_status:
            Telnyx::PortingPhoneNumber::PortabilityStatus::OrSymbol
        ).void
      end
      attr_writer :portability_status

      # Identifies the associated port request
      sig { returns(T.nilable(String)) }
      attr_reader :porting_order_id

      sig { params(porting_order_id: String).void }
      attr_writer :porting_order_id

      # The current status of the porting order
      sig do
        returns(
          T.nilable(
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        )
      end
      attr_reader :porting_order_status

      sig do
        params(
          porting_order_status:
            Telnyx::PortingPhoneNumber::PortingOrderStatus::OrSymbol
        ).void
      end
      attr_writer :porting_order_status

      # The current status of the requirements in a INTL porting order
      sig do
        returns(
          T.nilable(
            Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        )
      end
      attr_reader :requirements_status

      sig do
        params(
          requirements_status:
            Telnyx::PortingPhoneNumber::RequirementsStatus::OrSymbol
        ).void
      end
      attr_writer :requirements_status

      # A key to reference this porting order when contacting Telnyx customer support
      sig { returns(T.nilable(String)) }
      attr_reader :support_key

      sig { params(support_key: String).void }
      attr_writer :support_key

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig do
        params(
          activation_status: Telnyx::PortingOrderActivationStatus::OrSymbol,
          phone_number: String,
          phone_number_type:
            Telnyx::PortingPhoneNumber::PhoneNumberType::OrSymbol,
          portability_status:
            Telnyx::PortingPhoneNumber::PortabilityStatus::OrSymbol,
          porting_order_id: String,
          porting_order_status:
            Telnyx::PortingPhoneNumber::PortingOrderStatus::OrSymbol,
          record_type: String,
          requirements_status:
            Telnyx::PortingPhoneNumber::RequirementsStatus::OrSymbol,
          support_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Activation status
        activation_status: nil,
        # E164 formatted phone number
        phone_number: nil,
        # The type of the phone number
        phone_number_type: nil,
        # Specifies whether Telnyx is able to confirm portability this number in the
        # United States & Canada. International phone numbers are provisional by default.
        portability_status: nil,
        # Identifies the associated port request
        porting_order_id: nil,
        # The current status of the porting order
        porting_order_status: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The current status of the requirements in a INTL porting order
        requirements_status: nil,
        # A key to reference this porting order when contacting Telnyx customer support
        support_key: nil
      )
      end

      sig do
        override.returns(
          {
            activation_status:
              Telnyx::PortingOrderActivationStatus::TaggedSymbol,
            phone_number: String,
            phone_number_type:
              Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol,
            portability_status:
              Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol,
            porting_order_id: String,
            porting_order_status:
              Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol,
            record_type: String,
            requirements_status:
              Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol,
            support_key: String
          }
        )
      end
      def to_hash
      end

      # The type of the phone number
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingPhoneNumber::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LANDLINE =
          T.let(
            :landline,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        LOCAL =
          T.let(
            :local,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingPhoneNumber::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Specifies whether Telnyx is able to confirm portability this number in the
      # United States & Canada. International phone numbers are provisional by default.
      module PortabilityStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingPhoneNumber::PortabilityStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol
          )
        CONFIRMED =
          T.let(
            :confirmed,
            Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol
          )
        PROVISIONAL =
          T.let(
            :provisional,
            Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingPhoneNumber::PortabilityStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current status of the porting order
      module PortingOrderStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingPhoneNumber::PortingOrderStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT =
          T.let(
            :draft,
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        IN_PROCESS =
          T.let(
            :"in-process",
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        SUBMITTED =
          T.let(
            :submitted,
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        EXCEPTION =
          T.let(
            :exception,
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        FOC_DATE_CONFIRMED =
          T.let(
            :"foc-date-confirmed",
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        CANCEL_PENDING =
          T.let(
            :"cancel-pending",
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        PORTED =
          T.let(
            :ported,
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingPhoneNumber::PortingOrderStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The current status of the requirements in a INTL porting order
      module RequirementsStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingPhoneNumber::RequirementsStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUIREMENT_INFO_PENDING =
          T.let(
            :"requirement-info-pending",
            Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_UNDER_REVIEW =
          T.let(
            :"requirement-info-under-review",
            Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        REQUIREMENT_INFO_EXCEPTION =
          T.let(
            :"requirement-info-exception",
            Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingPhoneNumber::RequirementsStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
