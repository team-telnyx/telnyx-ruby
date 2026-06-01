# frozen_string_literal: true

module Telnyx
  module Resources
    # Look up the live SIP registration status of a UAC connection.
    class SipRegistrationStatus
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::SipRegistrationStatusRetrieveParams} for more details.
      #
      # Returns the live SIP registration state of a UAC connection: whether it is
      # currently registered, when it last registered, and the last response Telnyx
      # received from the registrar. Only `uac_external_credential` is supported today.
      #
      # @overload retrieve(connection_id:, credential_type:, user_id:, request_options: {})
      #
      # @param connection_id [String] Identifier of the UAC connection to look up.
      #
      # @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up. Only `uac_external_credential` is supported t
      #
      # @param user_id [String] Owner of the connection. Used to authorize the lookup.
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
