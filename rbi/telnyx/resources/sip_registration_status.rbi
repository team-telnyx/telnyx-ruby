# typed: strong

module Telnyx
  module Resources
    # UAC connection operations
    class SipRegistrationStatus
      # Returns the live SIP registration status for a Telnyx endpoint: whether it is
      # currently registered, when the current registration expires, and the last
      # response Telnyx received from the registrar.
      #
      # The endpoint supports three credential types, selected with the
      # `credential_type` query parameter. Each type is keyed by a different identifier:
      #
      # | `credential_type`           | Keyed by        | Use case                                                                   |
      # | --------------------------- | --------------- | -------------------------------------------------------------------------- |
      # | `uac_external_credential`   | `connection_id` | A UAC (SIP attach) connection that registers to an external PBX.           |
      # | `telephony_credential`      | `username`      | An ephemeral, one-time-use telephony credential.                           |
      # | `sip_credential_connection` | `username`      | A traditional SIP credential connection that registers directly to Telnyx. |
      #
      # The authenticated account is taken from your API key; you can only read the
      # registration status of connections and credentials your account owns.
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
        # `connection_id`; `telephony_credential` and `sip_credential_connection` are
        # keyed by `username`.
        credential_type:,
        # Identifier of the UAC connection to look up. Required when `credential_type` is
        # `uac_external_credential`.
        connection_id: nil,
        # SIP username to look up. Required when `credential_type` is
        # `telephony_credential` or `sip_credential_connection`.
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
