# frozen_string_literal: true

module Telnyx
  module Resources
    class CredentialConnections
      class Actions
        # Checks the registration_status for a credential connection,
        # (`registration_status`) as well as the timestamp for the last SIP registration
        # event (`registration_status_updated_at`)
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
