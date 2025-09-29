# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class PhoneNumberWithVoiceSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute call_forwarding
        #   The call forwarding settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::CallForwarding, nil]
        optional :call_forwarding, -> { Telnyx::PhoneNumbers::CallForwarding }

        # @!attribute call_recording
        #   The call recording settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::CallRecording, nil]
        optional :call_recording, -> { Telnyx::PhoneNumbers::CallRecording }

        # @!attribute cnam_listing
        #   The CNAM listing settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::CnamListing, nil]
        optional :cnam_listing, -> { Telnyx::PhoneNumbers::CnamListing }

        # @!attribute connection_id
        #   Identifies the connection associated with this phone number.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute customer_reference
        #   A customer reference string for customer look ups.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute emergency
        #   The emergency services settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency, nil]
        optional :emergency, -> { Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency }

        # @!attribute inbound_call_screening
        #   The inbound_call_screening setting is a phone number configuration option
        #   variable that allows users to configure their settings to block or flag
        #   fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        #   feature has an additional per-number monthly cost associated with it.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening, nil]
        optional :inbound_call_screening,
                 enum: -> { Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening }

        # @!attribute media_features
        #   The media features settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::MediaFeatures, nil]
        optional :media_features, -> { Telnyx::PhoneNumbers::MediaFeatures }

        # @!attribute tech_prefix_enabled
        #   Controls whether a tech prefix is enabled for this phone number.
        #
        #   @return [Boolean, nil]
        optional :tech_prefix_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute translated_number
        #   This field allows you to rewrite the destination number of an inbound call
        #   before the call is routed to you. The value of this field may be any
        #   alphanumeric value, and the value will replace the number originally dialed.
        #
        #   @return [String, nil]
        optional :translated_number, String

        # @!attribute usage_payment_method
        #   Controls whether a number is billed per minute or uses your concurrent channels.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod, nil]
        optional :usage_payment_method,
                 enum: -> { Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod }

        response_only do
          # @!attribute id
          #   Identifies the type of resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute phone_number
          #   The phone number in +E164 format.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(id: nil, call_forwarding: nil, call_recording: nil, cnam_listing: nil, connection_id: nil, customer_reference: nil, emergency: nil, inbound_call_screening: nil, media_features: nil, phone_number: nil, record_type: nil, tech_prefix_enabled: nil, translated_number: nil, usage_payment_method: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings} for more details.
        #
        #   @param id [String] Identifies the type of resource.
        #
        #   @param call_forwarding [Telnyx::Models::PhoneNumbers::CallForwarding] The call forwarding settings for a phone number.
        #
        #   @param call_recording [Telnyx::Models::PhoneNumbers::CallRecording] The call recording settings for a phone number.
        #
        #   @param cnam_listing [Telnyx::Models::PhoneNumbers::CnamListing] The CNAM listing settings for a phone number.
        #
        #   @param connection_id [String] Identifies the connection associated with this phone number.
        #
        #   @param customer_reference [String] A customer reference string for customer look ups.
        #
        #   @param emergency [Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency] The emergency services settings for a phone number.
        #
        #   @param inbound_call_screening [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::InboundCallScreening] The inbound_call_screening setting is a phone number configuration option variab
        #
        #   @param media_features [Telnyx::Models::PhoneNumbers::MediaFeatures] The media features settings for a phone number.
        #
        #   @param phone_number [String] The phone number in +E164 format.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param tech_prefix_enabled [Boolean] Controls whether a tech prefix is enabled for this phone number.
        #
        #   @param translated_number [String] This field allows you to rewrite the destination number of an inbound call befor
        #
        #   @param usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::UsagePaymentMethod] Controls whether a number is billed per minute or uses your concurrent channels.

        # @see Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings#emergency
        class Emergency < Telnyx::Internal::Type::BaseModel
          # @!attribute emergency_address_id
          #   Identifies the address to be used with emergency services.
          #
          #   @return [String, nil]
          optional :emergency_address_id, String

          # @!attribute emergency_enabled
          #   Allows you to enable or disable emergency services on the phone number. In order
          #   to enable emergency services, you must also set an emergency_address_id.
          #
          #   @return [Boolean, nil]
          optional :emergency_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute emergency_status
          #   Represents the state of the number regarding emergency activation.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus, nil]
          optional :emergency_status,
                   enum: -> { Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus }

          # @!method initialize(emergency_address_id: nil, emergency_enabled: nil, emergency_status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency} for more
          #   details.
          #
          #   The emergency services settings for a phone number.
          #
          #   @param emergency_address_id [String] Identifies the address to be used with emergency services.
          #
          #   @param emergency_enabled [Boolean] Allows you to enable or disable emergency services on the phone number. In order
          #
          #   @param emergency_status [Symbol, Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency::EmergencyStatus] Represents the state of the number regarding emergency activation.

          # Represents the state of the number regarding emergency activation.
          #
          # @see Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings::Emergency#emergency_status
          module EmergencyStatus
            extend Telnyx::Internal::Type::Enum

            DISABLED = :disabled
            ACTIVE = :active
            PROVISIONING = :provisioning
            DEPROVISIONING = :deprovisioning
            PROVISIONING_FAILED = :"provisioning-failed"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        #
        # @see Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings#inbound_call_screening
        module InboundCallScreening
          extend Telnyx::Internal::Type::Enum

          DISABLED = :disabled
          REJECT_CALLS = :reject_calls
          FLAG_CALLS = :flag_calls

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls whether a number is billed per minute or uses your concurrent channels.
        #
        # @see Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings#usage_payment_method
        module UsagePaymentMethod
          extend Telnyx::Internal::Type::Enum

          PAY_PER_MINUTE = :"pay-per-minute"
          CHANNEL = :channel

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    PhoneNumberWithVoiceSettings = PhoneNumbers::PhoneNumberWithVoiceSettings
  end
end
