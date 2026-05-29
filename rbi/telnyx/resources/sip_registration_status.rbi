# typed: strong

module Telnyx
  module Resources
    # Look up SIP registration status across credential types
    class SipRegistrationStatus
      # Returns the live SIP registration state of a connection or credential. Supports
      # UAC third-party credentials, telephony credentials, and SIP credential
      # connections.
      sig do
        params(
          connection_id: String,
          credential_type:
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
          user_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SipRegistrationStatusRetrieveResponse)
      end
      def retrieve(
        # Identifier of the connection or credential to look up.
        connection_id:,
        # The kind of credential to look up.
        credential_type:,
        # Owner of the connection. Used to authorize the lookup.
        user_id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
