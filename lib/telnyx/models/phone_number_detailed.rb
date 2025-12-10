# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbers#list
    class PhoneNumberDetailed < Telnyx::Internal::Type::BaseModel
      # @!attribute billing_group_id
      #   Identifies the billing group associated with the phone number.
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   Identifies the connection associated with the phone number.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute customer_reference
      #   A customer reference string for customer look ups.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute deletion_lock_enabled
      #   Indicates whether deletion lock is enabled for this number. When enabled, this
      #   prevents the phone number from being deleted via the API or Telnyx portal.
      #
      #   @return [Boolean, nil]
      optional :deletion_lock_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute emergency_status
      #   Indicates the status of the provisioning of emergency services for the phone
      #   number. This field contains information about activity that may be ongoing for a
      #   number where it either is being provisioned or deprovisioned but is not yet
      #   enabled/disabled.
      #
      #   @return [Symbol, Telnyx::Models::PhoneNumberDetailed::EmergencyStatus, nil]
      optional :emergency_status, enum: -> { Telnyx::PhoneNumberDetailed::EmergencyStatus }

      # @!attribute external_pin
      #   If someone attempts to port your phone number away from Telnyx and your phone
      #   number has an external PIN set, Telnyx will attempt to verify that you provided
      #   the correct external PIN to the winning carrier. Note that not all carriers
      #   cooperate with this security mechanism.
      #
      #   @return [String, nil]
      optional :external_pin, String

      # @!attribute inbound_call_screening
      #   The inbound_call_screening setting is a phone number configuration option
      #   variable that allows users to configure their settings to block or flag
      #   fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
      #   feature has an additional per-number monthly cost associated with it.
      #
      #   @return [Symbol, Telnyx::Models::PhoneNumberDetailed::InboundCallScreening, nil]
      optional :inbound_call_screening, enum: -> { Telnyx::PhoneNumberDetailed::InboundCallScreening }

      # @!attribute messaging_profile_id
      #   Identifies the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute messaging_profile_name
      #   The name of the messaging profile associated with the phone number.
      #
      #   @return [String, nil]
      optional :messaging_profile_name, String

      # @!attribute tags
      #   A list of user-assigned tags to help manage the phone number.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute call_forwarding_enabled
        #   Indicates if call forwarding will be enabled for this number if forwards_to and
        #   forwarding_type are filled in. Defaults to true for backwards compatibility with
        #   APIV1 use of numbers endpoints.
        #
        #   @return [Boolean, nil]
        optional :call_forwarding_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute call_recording_enabled
        #   Indicates whether call recording is enabled for this number.
        #
        #   @return [Boolean, nil]
        optional :call_recording_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute caller_id_name_enabled
        #   Indicates whether caller ID is enabled for this number.
        #
        #   @return [Boolean, nil]
        optional :caller_id_name_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute cnam_listing_enabled
        #   Indicates whether a CNAM listing is enabled for this number.
        #
        #   @return [Boolean, nil]
        optional :cnam_listing_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute connection_name
        #   The user-assigned name of the connection to be associated with this phone
        #   number.
        #
        #   @return [String, nil]
        optional :connection_name, String

        # @!attribute country_iso_alpha2
        #   The ISO 3166-1 alpha-2 country code of the phone number.
        #
        #   @return [String, nil]
        optional :country_iso_alpha2, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute emergency_address_id
        #   Identifies the emergency address associated with the phone number.
        #
        #   @return [String, nil]
        optional :emergency_address_id, String

        # @!attribute emergency_enabled
        #   Indicates whether emergency services are enabled for this number.
        #
        #   @return [Boolean, nil]
        optional :emergency_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute phone_number
        #   The +E.164-formatted phone number associated with this record.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #   The phone number's type. Note: For numbers purchased prior to July 2023 or when
        #   fetching a number's details immediately after a purchase completes, the legacy
        #   values `tollfree`, `shortcode` or `longcode` may be returned instead.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberDetailed::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::PhoneNumberDetailed::PhoneNumberType }

        # @!attribute purchased_at
        #   ISO 8601 formatted date indicating when the resource was purchased.
        #
        #   @return [String, nil]
        optional :purchased_at, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute source_type
        #   Indicates if the phone number was purchased or ported in. For some numbers this
        #   information may not be available.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberDetailed::SourceType, nil]
        optional :source_type, enum: -> { Telnyx::PhoneNumberDetailed::SourceType }, nil?: true

        # @!attribute status
        #   The phone number's current status.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumberDetailed::Status, nil]
        optional :status, enum: -> { Telnyx::PhoneNumberDetailed::Status }

        # @!attribute t38_fax_gateway_enabled
        #   Indicates whether T38 Fax Gateway for inbound calls to this number.
        #
        #   @return [Boolean, nil]
        optional :t38_fax_gateway_enabled, Telnyx::Internal::Type::Boolean
      end

      # @!method initialize(id: nil, billing_group_id: nil, call_forwarding_enabled: nil, call_recording_enabled: nil, caller_id_name_enabled: nil, cnam_listing_enabled: nil, connection_id: nil, connection_name: nil, country_iso_alpha2: nil, created_at: nil, customer_reference: nil, deletion_lock_enabled: nil, emergency_address_id: nil, emergency_enabled: nil, emergency_status: nil, external_pin: nil, inbound_call_screening: nil, messaging_profile_id: nil, messaging_profile_name: nil, phone_number: nil, phone_number_type: nil, purchased_at: nil, record_type: nil, source_type: nil, status: nil, t38_fax_gateway_enabled: nil, tags: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PhoneNumberDetailed} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param billing_group_id [String] Identifies the billing group associated with the phone number.
      #
      #   @param call_forwarding_enabled [Boolean] Indicates if call forwarding will be enabled for this number if forwards_to and
      #
      #   @param call_recording_enabled [Boolean] Indicates whether call recording is enabled for this number.
      #
      #   @param caller_id_name_enabled [Boolean] Indicates whether caller ID is enabled for this number.
      #
      #   @param cnam_listing_enabled [Boolean] Indicates whether a CNAM listing is enabled for this number.
      #
      #   @param connection_id [String] Identifies the connection associated with the phone number.
      #
      #   @param connection_name [String] The user-assigned name of the connection to be associated with this phone number
      #
      #   @param country_iso_alpha2 [String] The ISO 3166-1 alpha-2 country code of the phone number.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param customer_reference [String] A customer reference string for customer look ups.
      #
      #   @param deletion_lock_enabled [Boolean] Indicates whether deletion lock is enabled for this number. When enabled, this p
      #
      #   @param emergency_address_id [String] Identifies the emergency address associated with the phone number.
      #
      #   @param emergency_enabled [Boolean] Indicates whether emergency services are enabled for this number.
      #
      #   @param emergency_status [Symbol, Telnyx::Models::PhoneNumberDetailed::EmergencyStatus] Indicates the status of the provisioning of emergency services for the phone num
      #
      #   @param external_pin [String] If someone attempts to port your phone number away from Telnyx and your phone nu
      #
      #   @param inbound_call_screening [Symbol, Telnyx::Models::PhoneNumberDetailed::InboundCallScreening] The inbound_call_screening setting is a phone number configuration option variab
      #
      #   @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
      #
      #   @param messaging_profile_name [String] The name of the messaging profile associated with the phone number.
      #
      #   @param phone_number [String] The +E.164-formatted phone number associated with this record.
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::PhoneNumberDetailed::PhoneNumberType] The phone number's type.
      #
      #   @param purchased_at [String] ISO 8601 formatted date indicating when the resource was purchased.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param source_type [Symbol, Telnyx::Models::PhoneNumberDetailed::SourceType, nil] Indicates if the phone number was purchased or ported in. For some numbers this
      #
      #   @param status [Symbol, Telnyx::Models::PhoneNumberDetailed::Status] The phone number's current status.
      #
      #   @param t38_fax_gateway_enabled [Boolean] Indicates whether T38 Fax Gateway for inbound calls to this number.
      #
      #   @param tags [Array<String>] A list of user-assigned tags to help manage the phone number.

      # Indicates the status of the provisioning of emergency services for the phone
      # number. This field contains information about activity that may be ongoing for a
      # number where it either is being provisioned or deprovisioned but is not yet
      # enabled/disabled.
      #
      # @see Telnyx::Models::PhoneNumberDetailed#emergency_status
      module EmergencyStatus
        extend Telnyx::Internal::Type::Enum

        ACTIVE = :active
        DEPROVISIONING = :deprovisioning
        DISABLED = :disabled
        PROVISIONING = :provisioning
        PROVISIONING_FAILED = :"provisioning-failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The inbound_call_screening setting is a phone number configuration option
      # variable that allows users to configure their settings to block or flag
      # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
      # feature has an additional per-number monthly cost associated with it.
      #
      # @see Telnyx::Models::PhoneNumberDetailed#inbound_call_screening
      module InboundCallScreening
        extend Telnyx::Internal::Type::Enum

        DISABLED = :disabled
        REJECT_CALLS = :reject_calls
        FLAG_CALLS = :flag_calls

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The phone number's type. Note: For numbers purchased prior to July 2023 or when
      # fetching a number's details immediately after a purchase completes, the legacy
      # values `tollfree`, `shortcode` or `longcode` may be returned instead.
      #
      # @see Telnyx::Models::PhoneNumberDetailed#phone_number_type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LOCAL = :local
        TOLL_FREE = :toll_free
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost
        LANDLINE = :landline
        TOLLFREE = :tollfree
        SHORTCODE = :shortcode
        LONGCODE = :longcode

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Indicates if the phone number was purchased or ported in. For some numbers this
      # information may not be available.
      #
      # @see Telnyx::Models::PhoneNumberDetailed#source_type
      module SourceType
        extend Telnyx::Internal::Type::Enum

        NUMBER_ORDER = :number_order
        PORT_REQUEST = :port_request

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The phone number's current status.
      #
      # @see Telnyx::Models::PhoneNumberDetailed#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PURCHASE_PENDING = :"purchase-pending"
        PURCHASE_FAILED = :"purchase-failed"
        PORT_PENDING = :"port-pending"
        PORT_FAILED = :"port-failed"
        ACTIVE = :active
        DELETED = :deleted
        EMERGENCY_ONLY = :"emergency-only"
        PORTED_OUT = :"ported-out"
        PORT_OUT_PENDING = :"port-out-pending"
        REQUIREMENT_INFO_PENDING = :"requirement-info-pending"
        REQUIREMENT_INFO_UNDER_REVIEW = :"requirement-info-under-review"
        REQUIREMENT_INFO_EXCEPTION = :"requirement-info-exception"
        PROVISION_PENDING = :"provision-pending"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
