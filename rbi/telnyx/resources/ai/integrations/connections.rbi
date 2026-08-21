# typed: strong

module Telnyx
  module Resources
    class AI
      class Integrations
        class Connections
          # Returns the details of a single integration connection by its ID.
          sig do
            params(
              user_connection_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse
            )
          end
          def retrieve(
            # The connection id
            user_connection_id,
            request_options: {}
          )
          end

          # Returns the list of integration connections you have set up, linking your
          # account to third-party services.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::Models::AI::Integrations::ConnectionListResponse
            )
          end
          def list(request_options: {})
          end

          # Delete a specific integration connection.
          sig do
            params(
              user_connection_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The user integration connection identifier
            user_connection_id,
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
