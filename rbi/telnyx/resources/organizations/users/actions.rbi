# typed: strong

module Telnyx
  module Resources
    class Organizations
      class Users
        class Actions
          # Deletes a user in your organization.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Organizations::Users::ActionRemoveResponse
            )
          end
          def remove(
            # Organization User ID
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
end
