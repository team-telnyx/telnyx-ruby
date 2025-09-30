# typed: strong

module Telnyx
  module Resources
    class CredentialConnections
      class Actions
        # Checks the registration_status for a credential connection,
        # (`registration_status`) as well as the timestamp for the last SIP registration
        # event (`registration_status_updated_at`)
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
