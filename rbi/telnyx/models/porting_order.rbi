# typed: strong

module Telnyx
  module Models
    class PortingOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::PortingOrder, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(Telnyx::PortingOrderActivationSettings)) }
      attr_reader :activation_settings

      sig do
        params(
          activation_settings: Telnyx::PortingOrderActivationSettings::OrHash
        ).void
      end
      attr_writer :activation_settings

      # For specific porting orders, we may require additional steps to be taken before
      # submitting the porting order.
      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::PortingOrder::AdditionalStep::TaggedSymbol]
          )
        )
      end
      attr_reader :additional_steps

      sig do
        params(
          additional_steps:
            T::Array[Telnyx::PortingOrder::AdditionalStep::OrSymbol]
        ).void
      end
      attr_writer :additional_steps

      # A customer-specified group reference for customer bookkeeping purposes
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_group_reference

      # A customer-specified reference number for customer bookkeeping purposes
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_reference

      # Can be specified directly or via the `requirement_group_id` parameter.
      sig { returns(T.nilable(Telnyx::PortingOrderDocuments)) }
      attr_reader :documents

      sig { params(documents: Telnyx::PortingOrderDocuments::OrHash).void }
      attr_writer :documents

      sig { returns(T.nilable(Telnyx::PortingOrderEndUser)) }
      attr_reader :end_user

      sig { params(end_user: Telnyx::PortingOrderEndUser::OrHash).void }
      attr_writer :end_user

      # Information about messaging porting process.
      sig { returns(T.nilable(Telnyx::PortingOrderMessaging)) }
      attr_reader :messaging

      sig { params(messaging: Telnyx::PortingOrderMessaging::OrHash).void }
      attr_writer :messaging

      sig { returns(T.nilable(Telnyx::PortingOrderMisc)) }
      attr_reader :misc

      sig { params(misc: T.nilable(Telnyx::PortingOrderMisc::OrHash)).void }
      attr_writer :misc

      sig { returns(T.nilable(Telnyx::PortingOrderPhoneNumberConfiguration)) }
      attr_reader :phone_number_configuration

      sig do
        params(
          phone_number_configuration:
            Telnyx::PortingOrderPhoneNumberConfiguration::OrHash
        ).void
      end
      attr_writer :phone_number_configuration

      # The type of the phone number
      sig do
        returns(T.nilable(Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol))
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type: Telnyx::PortingOrder::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      # List of phone numbers associated with this porting order
      sig { returns(T.nilable(T::Array[Telnyx::PortingOrder::PhoneNumber])) }
      attr_reader :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[Telnyx::PortingOrder::PhoneNumber::OrHash]
        ).void
      end
      attr_writer :phone_numbers

      # List of documentation requirements for porting numbers. Can be set directly or
      # via the `requirement_group_id` parameter.
      sig { returns(T.nilable(T::Array[Telnyx::PortingOrderRequirement])) }
      attr_reader :requirements

      sig do
        params(
          requirements: T::Array[Telnyx::PortingOrderRequirement::OrHash]
        ).void
      end
      attr_writer :requirements

      # Is true when the required documentation is met
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :requirements_met

      sig { params(requirements_met: T::Boolean).void }
      attr_writer :requirements_met

      # Porting order status
      sig { returns(T.nilable(Telnyx::PortingOrderStatus)) }
      attr_reader :status

      sig { params(status: Telnyx::PortingOrderStatus::OrHash).void }
      attr_writer :status

      sig { returns(T.nilable(Telnyx::PortingOrderUserFeedback)) }
      attr_reader :user_feedback

      sig do
        params(user_feedback: Telnyx::PortingOrderUserFeedback::OrHash).void
      end
      attr_writer :user_feedback

      # Identifies the user (or organization) who requested the porting order
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      # Uniquely identifies this porting order
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # A description of the porting order
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Identifies the old service provider
      sig { returns(T.nilable(String)) }
      attr_reader :old_service_provider_ocn

      sig { params(old_service_provider_ocn: String).void }
      attr_writer :old_service_provider_ocn

      # A key to reference for the porting order group when contacting Telnyx customer
      # support. This information is not available for porting orders in `draft` state
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_support_key

      # Count of phone numbers associated with this porting order
      sig { returns(T.nilable(Integer)) }
      attr_reader :porting_phone_numbers_count

      sig { params(porting_phone_numbers_count: Integer).void }
      attr_writer :porting_phone_numbers_count

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # A key to reference this porting order when contacting Telnyx customer support.
      # This information is not available in draft porting orders.
      sig { returns(T.nilable(String)) }
      attr_accessor :support_key

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          activation_settings: Telnyx::PortingOrderActivationSettings::OrHash,
          additional_steps:
            T::Array[Telnyx::PortingOrder::AdditionalStep::OrSymbol],
          created_at: Time,
          customer_group_reference: T.nilable(String),
          customer_reference: T.nilable(String),
          description: String,
          documents: Telnyx::PortingOrderDocuments::OrHash,
          end_user: Telnyx::PortingOrderEndUser::OrHash,
          messaging: Telnyx::PortingOrderMessaging::OrHash,
          misc: T.nilable(Telnyx::PortingOrderMisc::OrHash),
          old_service_provider_ocn: String,
          parent_support_key: T.nilable(String),
          phone_number_configuration:
            Telnyx::PortingOrderPhoneNumberConfiguration::OrHash,
          phone_number_type: Telnyx::PortingOrder::PhoneNumberType::OrSymbol,
          phone_numbers: T::Array[Telnyx::PortingOrder::PhoneNumber::OrHash],
          porting_phone_numbers_count: Integer,
          record_type: String,
          requirements: T::Array[Telnyx::PortingOrderRequirement::OrHash],
          requirements_met: T::Boolean,
          status: Telnyx::PortingOrderStatus::OrHash,
          support_key: T.nilable(String),
          updated_at: Time,
          user_feedback: Telnyx::PortingOrderUserFeedback::OrHash,
          user_id: String,
          webhook_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies this porting order
        id: nil,
        activation_settings: nil,
        # For specific porting orders, we may require additional steps to be taken before
        # submitting the porting order.
        additional_steps: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A customer-specified group reference for customer bookkeeping purposes
        customer_group_reference: nil,
        # A customer-specified reference number for customer bookkeeping purposes
        customer_reference: nil,
        # A description of the porting order
        description: nil,
        # Can be specified directly or via the `requirement_group_id` parameter.
        documents: nil,
        end_user: nil,
        # Information about messaging porting process.
        messaging: nil,
        misc: nil,
        # Identifies the old service provider
        old_service_provider_ocn: nil,
        # A key to reference for the porting order group when contacting Telnyx customer
        # support. This information is not available for porting orders in `draft` state
        parent_support_key: nil,
        phone_number_configuration: nil,
        # The type of the phone number
        phone_number_type: nil,
        # List of phone numbers associated with this porting order
        phone_numbers: nil,
        # Count of phone numbers associated with this porting order
        porting_phone_numbers_count: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # List of documentation requirements for porting numbers. Can be set directly or
        # via the `requirement_group_id` parameter.
        requirements: nil,
        # Is true when the required documentation is met
        requirements_met: nil,
        # Porting order status
        status: nil,
        # A key to reference this porting order when contacting Telnyx customer support.
        # This information is not available in draft porting orders.
        support_key: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        updated_at: nil,
        user_feedback: nil,
        # Identifies the user (or organization) who requested the porting order
        user_id: nil,
        webhook_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            activation_settings: Telnyx::PortingOrderActivationSettings,
            additional_steps:
              T::Array[Telnyx::PortingOrder::AdditionalStep::TaggedSymbol],
            created_at: Time,
            customer_group_reference: T.nilable(String),
            customer_reference: T.nilable(String),
            description: String,
            documents: Telnyx::PortingOrderDocuments,
            end_user: Telnyx::PortingOrderEndUser,
            messaging: Telnyx::PortingOrderMessaging,
            misc: T.nilable(Telnyx::PortingOrderMisc),
            old_service_provider_ocn: String,
            parent_support_key: T.nilable(String),
            phone_number_configuration:
              Telnyx::PortingOrderPhoneNumberConfiguration,
            phone_number_type:
              Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol,
            phone_numbers: T::Array[Telnyx::PortingOrder::PhoneNumber],
            porting_phone_numbers_count: Integer,
            record_type: String,
            requirements: T::Array[Telnyx::PortingOrderRequirement],
            requirements_met: T::Boolean,
            status: Telnyx::PortingOrderStatus,
            support_key: T.nilable(String),
            updated_at: Time,
            user_feedback: Telnyx::PortingOrderUserFeedback,
            user_id: String,
            webhook_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module AdditionalStep
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PortingOrder::AdditionalStep) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSOCIATED_PHONE_NUMBERS =
          T.let(
            :associated_phone_numbers,
            Telnyx::PortingOrder::AdditionalStep::TaggedSymbol
          )
        PHONE_NUMBER_VERIFICATION_CODES =
          T.let(
            :phone_number_verification_codes,
            Telnyx::PortingOrder::AdditionalStep::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrder::AdditionalStep::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The type of the phone number
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PortingOrder::PhoneNumberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LANDLINE =
          T.let(:landline, Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol)
        LOCAL =
          T.let(:local, Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol)
        MOBILE =
          T.let(:mobile, Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol)
        NATIONAL =
          T.let(:national, Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol)
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(:toll_free, Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrder::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::PortingOrder::PhoneNumber, Telnyx::Internal::AnyHash)
          end

        # Activation status
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          )
        end
        attr_reader :activation_status

        sig do
          params(
            activation_status:
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::OrSymbol
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
            T.nilable(
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          )
        end
        attr_reader :phone_number_type

        sig do
          params(
            phone_number_type:
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::OrSymbol
          ).void
        end
        attr_writer :phone_number_type

        # Specifies whether Telnyx is able to confirm portability this number in the
        # United States & Canada. International phone numbers are provisional by default.
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol
            )
          )
        end
        attr_reader :portability_status

        sig do
          params(
            portability_status:
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::OrSymbol
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
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          )
        end
        attr_reader :porting_order_status

        sig do
          params(
            porting_order_status:
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::OrSymbol
          ).void
        end
        attr_writer :porting_order_status

        # The current status of the requirements in a INTL porting order
        sig do
          returns(
            T.nilable(
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
            )
          )
        end
        attr_reader :requirements_status

        sig do
          params(
            requirements_status:
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::OrSymbol
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
            activation_status:
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::OrSymbol,
            phone_number: String,
            phone_number_type:
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::OrSymbol,
            portability_status:
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::OrSymbol,
            porting_order_id: String,
            porting_order_status:
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::OrSymbol,
            record_type: String,
            requirements_status:
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::OrSymbol,
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
                Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol,
              phone_number: String,
              phone_number_type:
                Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol,
              portability_status:
                Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol,
              porting_order_id: String,
              porting_order_status:
                Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol,
              record_type: String,
              requirements_status:
                Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol,
              support_key: String
            }
          )
        end
        def to_hash
        end

        # Activation status
        module ActivationStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortingOrder::PhoneNumber::ActivationStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NEW =
            T.let(
              :New,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          PENDING =
            T.let(
              :Pending,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          CONFLICT =
            T.let(
              :Conflict,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          CANCEL_PENDING =
            T.let(
              :"Cancel Pending",
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :Failed,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          CONCURRED =
            T.let(
              :Concurred,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          ACTIVATE_RDY =
            T.let(
              :"Activate RDY",
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          DISCONNECT_PENDING =
            T.let(
              :"Disconnect Pending",
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          CONCURRENCE_SENT =
            T.let(
              :"Concurrence Sent",
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          OLD =
            T.let(
              :Old,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          SENDING =
            T.let(
              :Sending,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :Active,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :Cancelled,
              Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrder::PhoneNumber::ActivationStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type of the phone number
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::PortingOrder::PhoneNumber::PhoneNumberType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LANDLINE =
            T.let(
              :landline,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          LOCAL =
            T.let(
              :local,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          MOBILE =
            T.let(
              :mobile,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          SHARED_COST =
            T.let(
              :shared_cost,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )
          TOLL_FREE =
            T.let(
              :toll_free,
              Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrder::PhoneNumber::PhoneNumberType::TaggedSymbol
              ]
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
              T.all(
                Symbol,
                Telnyx::PortingOrder::PhoneNumber::PortabilityStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol
            )
          CONFIRMED =
            T.let(
              :confirmed,
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol
            )
          PROVISIONAL =
            T.let(
              :provisional,
              Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrder::PhoneNumber::PortabilityStatus::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          IN_PROCESS =
            T.let(
              :"in-process",
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          EXCEPTION =
            T.let(
              :exception,
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          FOC_DATE_CONFIRMED =
            T.let(
              :"foc-date-confirmed",
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          CANCEL_PENDING =
            T.let(
              :"cancel-pending",
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          PORTED =
            T.let(
              :ported,
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::PortingOrder::PhoneNumber::RequirementsStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REQUIREMENT_INFO_PENDING =
            T.let(
              :"requirement-info-pending",
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
            )
          REQUIREMENT_INFO_UNDER_REVIEW =
            T.let(
              :"requirement-info-under-review",
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
            )
          REQUIREMENT_INFO_EXCEPTION =
            T.let(
              :"requirement-info-exception",
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
            )
          APPROVED =
            T.let(
              :approved,
              Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingOrder::PhoneNumber::RequirementsStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
