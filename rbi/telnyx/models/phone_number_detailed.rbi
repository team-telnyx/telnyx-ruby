# typed: strong

module Telnyx
  module Models
    class PhoneNumberDetailed < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhoneNumberDetailed, Telnyx::Internal::AnyHash)
        end

      # Indicates whether deletion lock is enabled for this number. When enabled, this
      # prevents the phone number from being deleted via the API or Telnyx portal.
      sig { returns(T::Boolean) }
      attr_accessor :deletion_lock_enabled

      # If someone attempts to port your phone number away from Telnyx and your phone
      # number has an external PIN set, Telnyx will attempt to verify that you provided
      # the correct external PIN to the winning carrier. Note that not all carriers
      # cooperate with this security mechanism.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_pin

      # A list of user-assigned tags to help manage the phone number.
      sig { returns(T::Array[String]) }
      attr_accessor :tags

      # Identifies the billing group associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_group_id

      # Identifies the connection associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :connection_id

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_reference

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
      attr_accessor :messaging_profile_id

      # The name of the messaging profile associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :messaging_profile_name

      # Identifies the resource.
      sig { returns(String) }
      attr_accessor :id

      # The ISO 3166-1 alpha-2 country code of the phone number.
      sig { returns(String) }
      attr_accessor :country_iso_alpha2

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The +E.164-formatted phone number associated with this record.
      sig { returns(String) }
      attr_accessor :phone_number

      # The phone number's type. Note: For numbers purchased prior to July 2023 or when
      # fetching a number's details immediately after a purchase completes, the legacy
      # values `tollfree`, `shortcode` or `longcode` may be returned instead.
      sig do
        returns(Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol)
      end
      attr_accessor :phone_number_type

      # ISO 8601 formatted date indicating when the resource was purchased.
      sig { returns(String) }
      attr_accessor :purchased_at

      # Identifies the type of the resource.
      sig { returns(String) }
      attr_accessor :record_type

      # The phone number's current status.
      sig { returns(Telnyx::PhoneNumberDetailed::Status::TaggedSymbol) }
      attr_accessor :status

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
      attr_accessor :connection_name

      # Identifies the emergency address associated with the phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :emergency_address_id

      # Indicates whether emergency services are enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :emergency_enabled

      sig { params(emergency_enabled: T::Boolean).void }
      attr_writer :emergency_enabled

      # Indicates whether HD voice is enabled for this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :hd_voice_enabled

      sig { params(hd_voice_enabled: T::Boolean).void }
      attr_writer :hd_voice_enabled

      # Indicates if the phone number was purchased or ported in. For some numbers this
      # information may not be available.
      sig do
        returns(
          T.nilable(Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol)
        )
      end
      attr_accessor :source_type

      # Indicates whether T38 Fax Gateway for inbound calls to this number.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :t38_fax_gateway_enabled

      sig { params(t38_fax_gateway_enabled: T::Boolean).void }
      attr_writer :t38_fax_gateway_enabled

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          country_iso_alpha2: String,
          created_at: Time,
          deletion_lock_enabled: T::Boolean,
          external_pin: T.nilable(String),
          phone_number: String,
          phone_number_type:
            Telnyx::PhoneNumberDetailed::PhoneNumberType::OrSymbol,
          purchased_at: String,
          record_type: String,
          status: Telnyx::PhoneNumberDetailed::Status::OrSymbol,
          tags: T::Array[String],
          billing_group_id: T.nilable(String),
          call_forwarding_enabled: T::Boolean,
          call_recording_enabled: T::Boolean,
          caller_id_name_enabled: T::Boolean,
          cnam_listing_enabled: T::Boolean,
          connection_id: T.nilable(String),
          connection_name: T.nilable(String),
          customer_reference: T.nilable(String),
          emergency_address_id: T.nilable(String),
          emergency_enabled: T::Boolean,
          emergency_status:
            Telnyx::PhoneNumberDetailed::EmergencyStatus::OrSymbol,
          hd_voice_enabled: T::Boolean,
          inbound_call_screening:
            Telnyx::PhoneNumberDetailed::InboundCallScreening::OrSymbol,
          messaging_profile_id: T.nilable(String),
          messaging_profile_name: T.nilable(String),
          source_type:
            T.nilable(Telnyx::PhoneNumberDetailed::SourceType::OrSymbol),
          t38_fax_gateway_enabled: T::Boolean,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id:,
        # The ISO 3166-1 alpha-2 country code of the phone number.
        country_iso_alpha2:,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at:,
        # Indicates whether deletion lock is enabled for this number. When enabled, this
        # prevents the phone number from being deleted via the API or Telnyx portal.
        deletion_lock_enabled:,
        # If someone attempts to port your phone number away from Telnyx and your phone
        # number has an external PIN set, Telnyx will attempt to verify that you provided
        # the correct external PIN to the winning carrier. Note that not all carriers
        # cooperate with this security mechanism.
        external_pin:,
        # The +E.164-formatted phone number associated with this record.
        phone_number:,
        # The phone number's type. Note: For numbers purchased prior to July 2023 or when
        # fetching a number's details immediately after a purchase completes, the legacy
        # values `tollfree`, `shortcode` or `longcode` may be returned instead.
        phone_number_type:,
        # ISO 8601 formatted date indicating when the resource was purchased.
        purchased_at:,
        # Identifies the type of the resource.
        record_type:,
        # The phone number's current status.
        status:,
        # A list of user-assigned tags to help manage the phone number.
        tags:,
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
        # A customer reference string for customer look ups.
        customer_reference: nil,
        # Identifies the emergency address associated with the phone number.
        emergency_address_id: nil,
        # Indicates whether emergency services are enabled for this number.
        emergency_enabled: nil,
        # Indicates the status of the provisioning of emergency services for the phone
        # number. This field contains information about activity that may be ongoing for a
        # number where it either is being provisioned or deprovisioned but is not yet
        # enabled/disabled.
        emergency_status: nil,
        # Indicates whether HD voice is enabled for this number.
        hd_voice_enabled: nil,
        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        inbound_call_screening: nil,
        # Identifies the messaging profile associated with the phone number.
        messaging_profile_id: nil,
        # The name of the messaging profile associated with the phone number.
        messaging_profile_name: nil,
        # Indicates if the phone number was purchased or ported in. For some numbers this
        # information may not be available.
        source_type: nil,
        # Indicates whether T38 Fax Gateway for inbound calls to this number.
        t38_fax_gateway_enabled: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            country_iso_alpha2: String,
            created_at: Time,
            deletion_lock_enabled: T::Boolean,
            external_pin: T.nilable(String),
            phone_number: String,
            phone_number_type:
              Telnyx::PhoneNumberDetailed::PhoneNumberType::TaggedSymbol,
            purchased_at: String,
            record_type: String,
            status: Telnyx::PhoneNumberDetailed::Status::TaggedSymbol,
            tags: T::Array[String],
            billing_group_id: T.nilable(String),
            call_forwarding_enabled: T::Boolean,
            call_recording_enabled: T::Boolean,
            caller_id_name_enabled: T::Boolean,
            cnam_listing_enabled: T::Boolean,
            connection_id: T.nilable(String),
            connection_name: T.nilable(String),
            customer_reference: T.nilable(String),
            emergency_address_id: T.nilable(String),
            emergency_enabled: T::Boolean,
            emergency_status:
              Telnyx::PhoneNumberDetailed::EmergencyStatus::TaggedSymbol,
            hd_voice_enabled: T::Boolean,
            inbound_call_screening:
              Telnyx::PhoneNumberDetailed::InboundCallScreening::TaggedSymbol,
            messaging_profile_id: T.nilable(String),
            messaging_profile_name: T.nilable(String),
            source_type:
              T.nilable(Telnyx::PhoneNumberDetailed::SourceType::TaggedSymbol),
            t38_fax_gateway_enabled: T::Boolean,
            updated_at: String
          }
        )
      end
      def to_hash
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
    end
  end
end
