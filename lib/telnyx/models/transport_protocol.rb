# frozen_string_literal: true

module Telnyx
  module Models
    # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
    # FQDN authentication.
    module TransportProtocol
      extend Telnyx::Internal::Type::Enum

      UDP = :UDP
      TCP = :TCP
      TLS = :TLS

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
