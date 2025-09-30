# typed: strong

module Telnyx
  module Models
    class PhoneNumberDetailed < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberDetailed, Telnyx::Internal::AnyHash)
        end

      # Identifies the billing group associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :billing_group_id

      sig { params(billing_group_id: String).void }
      attr_writer :billing_group_id

      # Identifies the connection associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # Indicates whether deletion lock is enabled for this number. When enabled, this
      # prevents the phone number from being deleted via the API or Telnyx portal.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :deletion_lock_enabled

      sig { params(deletion_lock_enabled: T::Boolean).void }
      attr_writer :deletion_lock_enabled

      # Indicates the status of the provisioning of emergency services for the phone
      # number. This field contains information about activity that may be ongoing for a
      # number where it either is being provisioned or deprovisioned but is not yet
      # enabled/disabled.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol)
        )
      end
      attr_reader :emergency_status

      sig do
        params(
          emergency_status:
            Telnyx::PhoneNumberDetailed::EmergencyStatus::OrSymbol
        ).void
      end
      attr_writer :emergency_status

      # If someone attempts to port your phone number away from Telnyx and your phone
      # number has an external PIN set, Telnyx will attempt to verify that you provided
      # the correct external PIN to the winning carrier. Note that not all carriers
      # cooperate with this security mechanism.
      sig { returns(T.nilable(String)) }
      attr_reader :external_pin

      sig { params(external_pin: String).void }
      attr_writer :external_pin

      # The inbound_call_screening setting is a phone number configuration option
      # variable that allows users to configure their settings to block or flag
      # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
      # feature has an additional per-number monthly cost associated with it.
      sig do
        returns(
          T.nilable(
            Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol
          )
        )
      end
      attr_reader :inbound_call_screening

      sig do
        params(
          inbound_call_screening:
            Telnyx::PhoneNumberDetailed::InboundCallScreening::OrSymbol
        ).void
      end
      attr_writer :inbound_call_screening

      # Identifies the messaging profile associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # The name of the messaging profile associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_name

      sig { params(messaging_profile_name: String).void }
      attr_writer :messaging_profile_name

      # A list of user-assigned tags to help manage the phone number.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Indicates if call forwarding will be enabled for this number if forwards_to and
      # forwarding_type are filled in. Defaults to true for backwards compatibility with
      # APIV1 use of numbers endpoints.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_forwarding_enabled

      sig { params(call_forwarding_enabled: T::Boolean).void }
      attr_writer :call_forwarding_enabled

      # Indicates whether call recording is enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_recording_enabled

      sig { params(call_recording_enabled: T::Boolean).void }
      attr_writer :call_recording_enabled

      # Indicates whether caller ID is enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :caller_id_name_enabled

      sig { params(caller_id_name_enabled: T::Boolean).void }
      attr_writer :caller_id_name_enabled

      # Indicates whether a CNAM listing is enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cnam_listing_enabled

      sig { params(cnam_listing_enabled: T::Boolean).void }
      attr_writer :cnam_listing_enabled

      # The user-assigned name of the connection to be associated with this phone
      # number.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      # The ISO 3166-1 alpha-2 country code of the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :country_iso_alpha2

      sig { params(country_iso_alpha2: String).void }
      attr_writer :country_iso_alpha2

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the emergency address associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_reader :emergency_address_id

      sig { params(emergency_address_id: String).void }
      attr_writer :emergency_address_id

      # Indicates whether emergency services are enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :emergency_enabled

      sig { params(emergency_enabled: T::Boolean).void }
      attr_writer :emergency_enabled

      # The +E.164-formatted phone number associated with this record.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

      # The phone number's type. Note: For numbers purchased prior to July 2023 or when
      # fetching a number's details immediately after a purchase completes, the legacy
      # values `tollfree`, `shortcode` or `longcode` may be returned instead.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol)
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::PhoneNumberDetailed::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      # ISO 8601 formatted date indicating when the resource was purchased.
      sig { returns(T.nilable(String)) }
      attr_reader :purchased_at

      sig { params(purchased_at: String).void }
      attr_writer :purchased_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Indicates if the phone number was purchased or ported in. For some numbers this
      # information may not be available.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol)
        )
      end
      attr_accessor :source_type

      # The phone number's current status.
      sig do
        returns(T.nilable(Telnyx::PhoneNumberDetailed::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Telnyx::PhoneNumberDetailed::Status::OrSymbol).void }
      attr_writer :status

      # Indicates whether T38 Fax Gateway for inbound calls to this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :t38_fax_gateway_enabled

      sig { params(t38_fax_gateway_enabled: T::Boolean).void }
      attr_writer :t38_fax_gateway_enabled

      sig do
        params(
          id: String,
          billing_group_id: String,
          call_forwarding_enabled: T::Boolean,
          call_recording_enabled: T::Boolean,
          caller_id_name_enabled: T::Boolean,
          cnam_listing_enabled: T::Boolean,
          connection_id: String,
          connection_name: String,
          country_iso_alpha2: String,
          created_at: String,
          customer_reference: String,
          deletion_lock_enabled: T::Boolean,
          emergency_address_id: String,
          emergency_enabled: T::Boolean,
          emergency_status:
            Telnyx::PhoneNumberDetailed::EmergencyStatus::OrSymbol,
          external_pin: String,
          inbound_call_screening:
            Telnyx::PhoneNumberDetailed::InboundCallScreening::OrSymbol,
          messaging_profile_id: String,
          messaging_profile_name: String,
          phone_number: String,
          phone_number_type:
            Telnyx::PhoneNumberDetailed::PhoneNumberType::OrSymbol,
          purchased_at: String,
          record_type: String,
          source_type:
            T.nilable(Telnyx::PhoneNumberDetailed::SourceType::OrSymbol),
          status: Telnyx::PhoneNumberDetailed::Status::OrSymbol,
          t38_fax_gateway_enabled: T::Boolean,
          tags: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # Identifies the billing group associated with the phone number.
        billing_group_id: nil,
        # Indicates if call forwarding will be enabled for this number if forwards_to and
        # forwarding_type are filled in. Defaults to true for backwards compatibility with
        # APIV1 use of numbers endpoints.
        call_forwarding_enabled: nil,
        # Indicates whether call recording is enabled for this number.
        call_recording_enabled: nil,
        # Indicates whether caller ID is enabled for this number.
        caller_id_name_enabled: nil,
        # Indicates whether a CNAM listing is enabled for this number.
        cnam_listing_enabled: nil,
        # Identifies the connection associated with the phone number.
        connection_id: nil,
        # The user-assigned name of the connection to be associated with this phone
        # number.
        connection_name: nil,
        # The ISO 3166-1 alpha-2 country code of the phone number.
        country_iso_alpha2: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Indicates whether deletion lock is enabled for this number. When enabled, this
        # prevents the phone number from being deleted via the API or Telnyx portal.
        deletion_lock_enabled: nil,
        # Identifies the emergency address associated with the phone number.
        emergency_address_id: nil,
        # Indicates whether emergency services are enabled for this number.
        emergency_enabled: nil,
        # Indicates the status of the provisioning of emergency services for the phone
        # number. This field contains information about activity that may be ongoing for a
        # number where it either is being provisioned or deprovisioned but is not yet
        # enabled/disabled.
        emergency_status: nil,
        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, Telnyx will attempt to verify that you provided
        # the correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        external_pin: nil,
        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        inbound_call_screening: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        # The name of the messaging profile associated with the phone number.
        messaging_profile_name: nil,
        # The +E.164-formatted phone number associated with this record.
        phone_number: nil,
        # The phone number's type. Note: For numbers purchased prior to July 2023 or when
        # fetching a number's details immediately after a purchase completes, the legacy
        # values `tollfree`, `shortcode` or `longcode` may be returned instead.
        phone_number_type: nil,
        # ISO 8601 formatted date indicating when the resource was purchased.
        purchased_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Indicates if the phone number was purchased or ported in. For some numbers this
        # information may not be available.
        source_type: nil,
        # The phone number's current status.
        status: nil,
        # Indicates whether T38 Fax Gateway for inbound calls to this number.
        t38_fax_gateway_enabled: nil,
        # A list of user-assigned tags to help manage the phone number.
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_group_id: String,
            call_forwarding_enabled: T::Boolean,
            call_recording_enabled: T::Boolean,
            caller_id_name_enabled: T::Boolean,
            cnam_listing_enabled: T::Boolean,
            connection_id: String,
            connection_name: String,
            country_iso_alpha2: String,
            created_at: String,
            customer_reference: String,
            deletion_lock_enabled: T::Boolean,
            emergency_address_id: String,
            emergency_enabled: T::Boolean,
            emergency_status:
              Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol,
            external_pin: String,
            inbound_call_screening:
              Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol,
            messaging_profile_id: String,
            messaging_profile_name: String,
            phone_number: String,
            phone_number_type:
              Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol,
            purchased_at: String,
            record_type: String,
            source_type:
              T.nilable(Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol),
            status: Telnyx::PhoneNumberDetailed::Status::TaggedSymbol,
            t38_fax_gateway_enabled: T::Boolean,
            tags: T::Array[String]
          }
        )
      end
      def to_hash
      end

      # Indicates the status of the provisioning of emergency services for the phone
      # number. This field contains information about activity that may be ongoing for a
      # number where it either is being provisioned or deprovisioned but is not yet
      # enabled/disabled.
      module EmergencyStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberDetailed::EmergencyStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol
          )
        DEPROVISIONING =
          T.let(
            :deprovisioning,
            Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol
          )
        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol
          )
        PROVISIONING_FAILED =
          T.let(
            :"provisioning-failed",
            Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The inbound_call_screening setting is a phone number configuration option
      # variable that allows users to configure their settings to block or flag
      # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
      # feature has an additional per-number monthly cost associated with it.
      module InboundCallScreening
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberDetailed::InboundCallScreening)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol
          )
        REJECT_CALLS =
          T.let(
            :reject_calls,
            Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol
          )
        FLAG_CALLS =
          T.let(
            :flag_calls,
            Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The phone number's type. Note: For numbers purchased prior to July 2023 or when
      # fetching a number's details immediately after a purchase completes, the legacy
      # values `tollfree`, `shortcode` or `longcode` may be returned instead.
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberDetailed::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        TOLLFREE =
          T.let(
            :tollfree,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        SHORTCODE =
          T.let(
            :shortcode,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )
        LONGCODE =
          T.let(
            :longcode,
            Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Indicates if the phone number was purchased or ported in. For some numbers this
      # information may not be available.
      module SourceType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PhoneNumberDetailed::SourceType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NUMBER_ORDER =
          T.let(
            :number_order,
            Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol
          )
        PORT_REQUEST =
          T.let(
            :port_request,
            Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The phone number's current status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::PhoneNumberDetailed::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE_PENDING =
          T.let(
            :"purchase-pending",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PURCHASE_FAILED =
          T.let(
            :"purchase-failed",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PORT_PENDING =
          T.let(
            :"port-pending",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PORT_FAILED =
          T.let(
            :"port-failed",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Telnyx::PhoneNumberDetailed::Status::TaggedSymbol)
        DELETED =
          T.let(:deleted, Telnyx::PhoneNumberDetailed::Status::TaggedSymbol)
        EMERGENCY_ONLY =
          T.let(
            :"emergency-only",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PORTED_OUT =
          T.let(
            :"ported-out",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PORT_OUT_PENDING =
          T.let(
            :"port-out-pending",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_PENDING =
          T.let(
            :"requirement-info-pending",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_UNDER_REVIEW =
          T.let(
            :"requirement-info-under-review",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_EXCEPTION =
          T.let(
            :"requirement-info-exception",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )
        PROVISION_PENDING =
          T.let(
            :"provision-pending",
            Telnyx::PhoneNumberDetailed::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PhoneNumberDetailed::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
