# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class CallForwarding < Telnyx::Internal::Type::BaseModel
        # @!attribute call_forwarding_enabled
        #   Indicates if call forwarding will be enabled for this number if forwards_to and
        #   forwarding_type are filled in. Defaults to true for backwards compatibility with
        #   APIV1 use of numbers endpoints.
        #
        #   @return [Boolean, nil]
        optional :call_forwarding_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute forwarding_type
        #   Call forwarding type. 'forwards_to' must be set for this to have an effect.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::CallForwarding::ForwardingType, nil]
        optional :forwarding_type, enum: -> { Telnyx::PhoneNumbers::CallForwarding::ForwardingType }

        # @!attribute forwards_to
        #   The phone number to which inbound calls to this number are forwarded. Inbound
        #   calls will not be forwarded if this field is left blank. If set, must be a
        #   +E.164-formatted phone number.
        #
        #   @return [String, nil]
        optional :forwards_to, String

        # @!method initialize(call_forwarding_enabled: nil, forwarding_type: nil, forwards_to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::CallForwarding} for more details.
        #
        #   The call forwarding settings for a phone number.
        #
        #   @param call_forwarding_enabled [Boolean] Indicates if call forwarding will be enabled for this number if forwards_to and
        #
        #   @param forwarding_type [Symbol, Telnyx::Models::PhoneNumbers::CallForwarding::ForwardingType] Call forwarding type. 'forwards_to' must be set for this to have an effect.
        #
        #   @param forwards_to [String] The phone number to which inbound calls to this number are forwarded. Inbound ca

        # Call forwarding type. 'forwards_to' must be set for this to have an effect.
        #
        # @see Telnyx::Models::PhoneNumbers::CallForwarding#forwarding_type
        module ForwardingType
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          ON_FAILURE = :"on-failure"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
