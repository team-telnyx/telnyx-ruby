# frozen_string_literal: true

module Telnyx
  module Resources
    class CredentialConnections
      # Credential connection operations
      class Actions
        # Returns the live SIP registration status for a credential connection. Reports
        # whether the endpoint is currently registered (`status`) and the timestamp of the
        # last SIP registration event (`last_registration`).
        #
        # @overload check_registration_status(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse]
        #
        # @see Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusParams
        def check_registration_status(id, params = {})
          @client.request(
            method: :post,
            path: ["credential_connections/%1$s/actions/check_registration_status", id],
            model: Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse,
            options: params[:request_options]
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
end
