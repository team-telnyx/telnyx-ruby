# frozen_string_literal: true

module Telnyx
  module Resources
    # UAC connection operations
    class SipRegistrationStatus
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SipRegistrationStatusRetrieveParams} for more details.
      #
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
      #
      # @overload retrieve(credential_type:, connection_id: nil, username: nil, request_options: {})
      #
      # @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up. `uac_external_credential` is keyed by `connec
      #
      # @param connection_id [String] Identifier of the UAC connection to look up. Required when `credential_type` is
      #
      # @param username [String] SIP username to look up. Required when `credential_type` is `telephony_credentia
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::SipRegistrationStatusRetrieveResponse]
      #
      # @see Telnyx::Models::SipRegistrationStatusRetrieveParams
      def retrieve(params)
        parsed, options = Telnyx::SipRegistrationStatusRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "sip_registration_status",
          query: query,
          model: Telnyx::Models::SipRegistrationStatusRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
