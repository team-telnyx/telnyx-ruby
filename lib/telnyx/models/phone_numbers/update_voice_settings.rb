# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class UpdateVoiceSettings < Telnyx::Internal::Type::BaseModel
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

        # @!attribute caller_id_name_enabled
        #   Controls whether the caller ID name is enabled for this phone number.
        #
        #   @return [Boolean, nil]
        optional :caller_id_name_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute cnam_listing
        #   The CNAM listing settings for a phone number.
        #
        #   @return [Telnyx::Models::PhoneNumbers::CnamListing, nil]
        optional :cnam_listing, -> { Telnyx::PhoneNumbers::CnamListing }

        # @!attribute inbound_call_screening
        #   The inbound_call_screening setting is a phone number configuration option
        #   variable that allows users to configure their settings to block or flag
        #   fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        #   feature has an additional per-number monthly cost associated with it.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening, nil]
        optional :inbound_call_screening,
                 enum: -> { Telnyx::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening }

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
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod, nil]
        optional :usage_payment_method, enum: -> { Telnyx::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod }

        # @!method initialize(call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, inbound_call_screening: nil, media_features: nil, tech_prefix_enabled: nil, translated_number: nil, usage_payment_method: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::UpdateVoiceSettings} for more details.
        #
        #   @param call_forwarding [Telnyx::Models::PhoneNumbers::CallForwarding] The call forwarding settings for a phone number.
        #
        #   @param call_recording [Telnyx::Models::PhoneNumbers::CallRecording] The call recording settings for a phone number.
        #
        #   @param caller_id_name_enabled [Boolean] Controls whether the caller ID name is enabled for this phone number.
        #
        #   @param cnam_listing [Telnyx::Models::PhoneNumbers::CnamListing] The CNAM listing settings for a phone number.
        #
        #   @param inbound_call_screening [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening] The inbound_call_screening setting is a phone number configuration option variab
        #
        #   @param media_features [Telnyx::Models::PhoneNumbers::MediaFeatures] The media features settings for a phone number.
        #
        #   @param tech_prefix_enabled [Boolean] Controls whether a tech prefix is enabled for this phone number.
        #
        #   @param translated_number [String] This field allows you to rewrite the destination number of an inbound call befor
        #
        #   @param usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod] Controls whether a number is billed per minute or uses your concurrent channels.

        # The inbound_call_screening setting is a phone number configuration option
        # variable that allows users to configure their settings to block or flag
        # fraudulent calls. It can be set to disabled, reject_calls, or flag_calls. This
        # feature has an additional per-number monthly cost associated with it.
        #
        # @see Telnyx::Models::PhoneNumbers::UpdateVoiceSettings#inbound_call_screening
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
        # @see Telnyx::Models::PhoneNumbers::UpdateVoiceSettings#usage_payment_method
        module UsagePaymentMethod
          extend Telnyx::Internal::Type::Enum

          PAY_PER_MINUTE = :"pay-per-minute"
          CHANNEL = :channel

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
