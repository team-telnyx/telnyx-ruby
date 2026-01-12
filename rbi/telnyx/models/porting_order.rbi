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
    end
  end
end
