# typed: strong

module Telnyx
  module Models
    class PhoneNumberSlimListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberSlimListResponse,
            Telnyx::Internal::AnyHash
          )
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

      # Indicates the status of the provisioning of emergency services for the phone
      # number. This field contains information about activity that may be ongoing for a
      # number where it either is being provisioned or deprovisioned but is not yet
      # enabled/disabled.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )
        )
      end
      attr_reader :emergency_status

      sig do
        params(
          emergency_status:
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::OrSymbol
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
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol
          )
        )
      end
      attr_reader :inbound_call_screening

      sig do
        params(
          inbound_call_screening:
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::OrSymbol
        ).void
      end
      attr_writer :inbound_call_screening

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
          T.nilable(
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::OrSymbol
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

      # The phone number's current status.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::Models::PhoneNumberSlimListResponse::Status::OrSymbol
        ).void
      end
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
          country_iso_alpha2: String,
          created_at: String,
          customer_reference: String,
          emergency_address_id: String,
          emergency_enabled: T::Boolean,
          emergency_status:
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::OrSymbol,
          external_pin: String,
          inbound_call_screening:
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::OrSymbol,
          phone_number: String,
          phone_number_type:
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::OrSymbol,
          purchased_at: String,
          record_type: String,
          status: Telnyx::Models::PhoneNumberSlimListResponse::Status::OrSymbol,
          t38_fax_gateway_enabled: T::Boolean
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
        # The ISO 3166-1 alpha-2 country code of the phone number.
        country_iso_alpha2: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
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
        # The phone number's current status.
        status: nil,
        # Indicates whether T38 Fax Gateway for inbound calls to this number.
        t38_fax_gateway_enabled: nil
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
            country_iso_alpha2: String,
            created_at: String,
            customer_reference: String,
            emergency_address_id: String,
            emergency_enabled: T::Boolean,
            emergency_status:
              Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol,
            external_pin: String,
            inbound_call_screening:
              Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol,
            phone_number: String,
            phone_number_type:
              Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol,
            purchased_at: String,
            record_type: String,
            status:
              Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol,
            t38_fax_gateway_enabled: T::Boolean
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
            T.all(
              Symbol,
              Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )
        DEPROVISIONING =
          T.let(
            :deprovisioning,
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )
        PROVISIONING =
          T.let(
            :provisioning,
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )
        PROVISIONING_FAILED =
          T.let(
            :"provisioning-failed",
            Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PhoneNumberSlimListResponse::EmergencyStatus::TaggedSymbol
            ]
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
            T.all(
              Symbol,
              Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol
          )
        REJECT_CALLS =
          T.let(
            :reject_calls,
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol
          )
        FLAG_CALLS =
          T.let(
            :flag_calls,
            Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PhoneNumberSlimListResponse::InboundCallScreening::TaggedSymbol
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
            T.all(
              Symbol,
              Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        TOLLFREE =
          T.let(
            :tollfree,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        SHORTCODE =
          T.let(
            :shortcode,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )
        LONGCODE =
          T.let(
            :longcode,
            Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PhoneNumberSlimListResponse::PhoneNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The phone number's current status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::PhoneNumberSlimListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PURCHASE_PENDING =
          T.let(
            :"purchase-pending",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PURCHASE_FAILED =
          T.let(
            :"purchase-failed",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PORT_PENDING =
          T.let(
            :"port-pending",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PORT_FAILED =
          T.let(
            :"port-failed",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        EMERGENCY_ONLY =
          T.let(
            :"emergency-only",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PORTED_OUT =
          T.let(
            :"ported-out",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PORT_OUT_PENDING =
          T.let(
            :"port-out-pending",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_PENDING =
          T.let(
            :"requirement-info-pending",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_UNDER_REVIEW =
          T.let(
            :"requirement-info-under-review",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        REQUIREMENT_INFO_EXCEPTION =
          T.let(
            :"requirement-info-exception",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )
        PROVISION_PENDING =
          T.let(
            :"provision-pending",
            Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::PhoneNumberSlimListResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
