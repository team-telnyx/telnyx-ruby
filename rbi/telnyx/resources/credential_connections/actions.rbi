# typed: strong

module Telnyx
  module Resources
    class CredentialConnections
      # Credential connection operations
      class Actions
        # Returns the live SIP registration status for a credential connection. Reports
        # whether the endpoint is currently registered (`status`) and the timestamp of the
        # last SIP registration event (`last_registration`).
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse
          )
        end
        def check_registration_status(
          # Identifies the resource.
          id,
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
end
