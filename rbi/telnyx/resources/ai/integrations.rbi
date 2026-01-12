# typed: strong

module Telnyx
  module Resources
    class AI
      class Integrations
        sig { returns(Telnyx::Resources::AI::Integrations::Connections) }
        attr_reader :connections

        # Retrieve integration details
        sig do
          params(
            integration_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::IntegrationRetrieveResponse)
        end
        def retrieve(
          # The integration id
          integration_id,
          request_options: {}
        )
        end

        # List all available integrations.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::AI::IntegrationListResponse
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
