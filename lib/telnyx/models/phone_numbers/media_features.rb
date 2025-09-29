# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class MediaFeatures < Telnyx::Internal::Type::BaseModel
        # @!attribute accept_any_rtp_packets_enabled
        #   When enabled, Telnyx will accept RTP packets from any customer-side IP address
        #   and port, not just those to which Telnyx is sending RTP.
        #
        #   @return [Boolean, nil]
        optional :accept_any_rtp_packets_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute rtp_auto_adjust_enabled
        #   When RTP Auto-Adjust is enabled, the destination RTP address port will be
        #   automatically changed to match the source of the incoming RTP packets.
        #
        #   @return [Boolean, nil]
        optional :rtp_auto_adjust_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute t38_fax_gateway_enabled
        #   Controls whether Telnyx will accept a T.38 re-INVITE for this phone number. Note
        #   that Telnyx will not send a T.38 re-INVITE; this option only controls whether
        #   one will be accepted.
        #
        #   @return [Boolean, nil]
        optional :t38_fax_gateway_enabled, Telnyx::Internal::Type::Boolean

        # @!method initialize(accept_any_rtp_packets_enabled: nil, rtp_auto_adjust_enabled: nil, t38_fax_gateway_enabled: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::MediaFeatures} for more details.
        #
        #   The media features settings for a phone number.
        #
        #   @param accept_any_rtp_packets_enabled [Boolean] When enabled, Telnyx will accept RTP packets from any customer-side IP address a
        #
        #   @param rtp_auto_adjust_enabled [Boolean] When RTP Auto-Adjust is enabled, the destination RTP address port will be automa
        #
        #   @param t38_fax_gateway_enabled [Boolean] Controls whether Telnyx will accept a T.38 re-INVITE for this phone number. Note
      end
    end
  end
end
