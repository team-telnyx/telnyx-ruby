# frozen_string_literal: true

module Telnyx
  module Models
    # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
    # TLS.
    module EncryptedMedia
      extend Telnyx::Internal::Type::Enum

      SRTP = :SRTP

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
