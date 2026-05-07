# typed: strong

module Telnyx
  module Models
    class UacInternalSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UacInternalSettings, Telnyx::Internal::AnyHash)
        end

      # The SIP URI that Telnyx will call when handling an inbound request from the
      # external peer. Do not include a `sip:` prefix. The value must be in the format
      # `userinfo@<subdomain.>sip.telnyx.com` or
      # `userinfo@<subdomain.>sipdev.telnyx.com`; the userinfo portion may contain only
      # letters, digits, hyphens, and underscores.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_uri

      sig { params(destination_uri: String).void }
      attr_writer :destination_uri

      # Internal Telnyx-side settings for a UAC connection.
      sig { params(destination_uri: String).returns(T.attached_class) }
      def self.new(
        # The SIP URI that Telnyx will call when handling an inbound request from the
        # external peer. Do not include a `sip:` prefix. The value must be in the format
        # `userinfo@<subdomain.>sip.telnyx.com` or
        # `userinfo@<subdomain.>sipdev.telnyx.com`; the userinfo portion may contain only
        # letters, digits, hyphens, and underscores.
        destination_uri: nil
      )
      end

      sig { override.returns({ destination_uri: String }) }
      def to_hash
      end
    end
  end
end
