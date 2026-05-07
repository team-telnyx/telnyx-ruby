# frozen_string_literal: true

module Telnyx
  module Models
    class UacInternalSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute destination_uri
      #   The SIP URI that Telnyx will call when handling an inbound request from the
      #   external peer. Do not include a `sip:` prefix. The value must be in the format
      #   `userinfo@[subdomain.]sip.telnyx.com` or
      #   `userinfo@[subdomain.]sipdev.telnyx.com`; the userinfo portion may contain only
      #   letters, digits, hyphens, and underscores.
      #
      #   @return [String, nil]
      optional :destination_uri, String

      # @!method initialize(destination_uri: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UacInternalSettings} for more details.
      #
      #   Internal Telnyx-side settings for a UAC connection.
      #
      #   @param destination_uri [String] The SIP URI that Telnyx will call when handling an inbound request from the exte
    end
  end
end
