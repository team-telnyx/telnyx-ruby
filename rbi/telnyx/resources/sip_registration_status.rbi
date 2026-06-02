# typed: strong

module Telnyx
  module Resources
    # Look up the live SIP registration status of a UAC connection.
    class SipRegistrationStatus
      # Returns the live SIP registration state of a UAC connection: whether it is
      # currently registered, when it last registered, and the last response Telnyx
      # received from the registrar. Only `uac_external_credential` is supported today.
      sig do
        params(
          connection_id: String,
          credential_type:
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SipRegistrationStatusRetrieveResponse)
      end
      def retrieve(
        # Identifier of the UAC connection to look up.
        connection_id:,
        # The kind of credential to look up. Only `uac_external_credential` is supported
        # today.
        credential_type:,
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
