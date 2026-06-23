# typed: strong

module Telnyx
  module Resources
    # UAC connection operations
    class SipRegistrationStatus
      # Returns the live SIP registration state of a UAC connection: whether it is
      # currently registered, when it last registered, and the last response Telnyx
      # received from the registrar. Only `uac_external_credential` is supported today.
      sig do
        params(
          credential_type:
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
          connection_id: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::SipRegistrationStatusRetrieveResponse)
      end
      def retrieve(
        # The kind of credential to look up. `uac_external_credential` is keyed by
        # `connection_id`; `telephony_credential` is keyed by `username`.
        credential_type:,
        # Identifier of the UAC connection to look up. Required when `credential_type` is
        # `uac_external_credential`.
        connection_id: nil,
        # SIP username of the telephony credential to look up. Required when
        # `credential_type` is `telephony_credential`.
        username: nil,
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
