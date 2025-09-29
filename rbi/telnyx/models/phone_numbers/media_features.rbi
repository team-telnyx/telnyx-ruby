# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class MediaFeatures < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::MediaFeatures,
              Telnyx::Internal::AnyHash
            )
          end

        # When enabled, Telnyx will accept RTP packets from any customer-side IP address
        # and port, not just those to which Telnyx is sending RTP.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :accept_any_rtp_packets_enabled

        sig { params(accept_any_rtp_packets_enabled: T::Boolean).void }
        attr_writer :accept_any_rtp_packets_enabled

        # When RTP Auto-Adjust is enabled, the destination RTP address port will be
        # automatically changed to match the source of the incoming RTP packets.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :rtp_auto_adjust_enabled

        sig { params(rtp_auto_adjust_enabled: T::Boolean).void }
        attr_writer :rtp_auto_adjust_enabled

        # Controls whether Telnyx will accept a T.38 re-INVITE for this phone number. Note
        # that Telnyx will not send a T.38 re-INVITE; this option only controls whether
        # one will be accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :t38_fax_gateway_enabled

        sig { params(t38_fax_gateway_enabled: T::Boolean).void }
        attr_writer :t38_fax_gateway_enabled

        # The media features settings for a phone number.
        sig do
          params(
            accept_any_rtp_packets_enabled: T::Boolean,
            rtp_auto_adjust_enabled: T::Boolean,
            t38_fax_gateway_enabled: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # When enabled, Telnyx will accept RTP packets from any customer-side IP address
          # and port, not just those to which Telnyx is sending RTP.
          accept_any_rtp_packets_enabled: nil,
          # When RTP Auto-Adjust is enabled, the destination RTP address port will be
          # automatically changed to match the source of the incoming RTP packets.
          rtp_auto_adjust_enabled: nil,
          # Controls whether Telnyx will accept a T.38 re-INVITE for this phone number. Note
          # that Telnyx will not send a T.38 re-INVITE; this option only controls whether
          # one will be accepted.
          t38_fax_gateway_enabled: nil
        )
        end

        sig do
          override.returns(
            {
              accept_any_rtp_packets_enabled: T::Boolean,
              rtp_auto_adjust_enabled: T::Boolean,
              t38_fax_gateway_enabled: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
