# typed: strong

module Telnyx
  module Resources
    class MessagingProfiles
      class Actions
        # Regenerate the v1 secret for a messaging profile.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::MessagingProfiles::ActionRegenerateSecretResponse
          )
        end
        def regenerate_secret(
          # The identifier of the messaging profile.
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
