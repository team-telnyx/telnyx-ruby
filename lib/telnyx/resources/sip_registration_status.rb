# frozen_string_literal: true

module Telnyx
  module Resources
    # Look up SIP registration status across credential types
    class SipRegistrationStatus
      # Returns the live SIP registration state of a connection or credential. Supports
      # UAC third-party credentials, telephony credentials, and SIP credential
      # connections.
      #
      # @overload retrieve(connection_id:, credential_type:, user_id:, request_options: {})
      #
      # @param connection_id [String] Identifier of the connection or credential to look up.
      #
      # @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up.
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
