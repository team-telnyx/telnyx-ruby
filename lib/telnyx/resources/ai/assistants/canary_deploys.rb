# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Assistants
        class CanaryDeploys
          # Endpoint to create a canary deploy configuration for an assistant.
          #
          # Creates a new canary deploy configuration with multiple version IDs and their
          # traffic percentages for A/B testing or gradual rollouts of assistant versions.
          #
          # @overload create(assistant_id, versions:, request_options: {})
          #
          # @param assistant_id [String]
          #
          # @param versions [Array<Telnyx::Models::AI::Assistants::VersionConfig>] List of version configurations
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::CanaryDeployResponse]
          #
          # @see Telnyx::Models::AI::Assistants::CanaryDeployCreateParams
          def create(assistant_id, params)
            parsed, options = Telnyx::AI::Assistants::CanaryDeployCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["ai/assistants/%1$s/canary-deploys", assistant_id],
              body: parsed,
              model: Telnyx::AI::Assistants::CanaryDeployResponse,
              options: options
            )
          end

          # Endpoint to get a canary deploy configuration for an assistant.
          #
          # Retrieves the current canary deploy configuration with all version IDs and their
          # traffic percentages for the specified assistant.
          #
          # @overload retrieve(assistant_id, request_options: {})
          #
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::CanaryDeployResponse]
          #
          # @see Telnyx::Models::AI::Assistants::CanaryDeployRetrieveParams
          def retrieve(assistant_id, params = {})
            @client.request(
              method: :get,
              path: ["ai/assistants/%1$s/canary-deploys", assistant_id],
              model: Telnyx::AI::Assistants::CanaryDeployResponse,
              options: params[:request_options]
            )
          end

          # Endpoint to update a canary deploy configuration for an assistant.
          #
          # Updates the existing canary deploy configuration with new version IDs and
          # percentages. All old versions and percentages are replaces by new ones from this
          # request.
          #
          # @overload update(assistant_id, versions:, request_options: {})
          #
          # @param assistant_id [String]
          #
          # @param versions [Array<Telnyx::Models::AI::Assistants::VersionConfig>] List of version configurations
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::Assistants::CanaryDeployResponse]
          #
          # @see Telnyx::Models::AI::Assistants::CanaryDeployUpdateParams
          def update(assistant_id, params)
            parsed, options = Telnyx::AI::Assistants::CanaryDeployUpdateParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["ai/assistants/%1$s/canary-deploys", assistant_id],
              body: parsed,
              model: Telnyx::AI::Assistants::CanaryDeployResponse,
              options: options
            )
          end

          # Endpoint to delete a canary deploy configuration for an assistant.
          #
          # Removes all canary deploy configurations for the specified assistant.
          #
          # @overload delete(assistant_id, request_options: {})
          #
          # @param assistant_id [String]
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Telnyx::Models::AI::Assistants::CanaryDeployDeleteParams
          def delete(assistant_id, params = {})
            @client.request(
              method: :delete,
              path: ["ai/assistants/%1$s/canary-deploys", assistant_id],
              model: NilClass,
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
end
