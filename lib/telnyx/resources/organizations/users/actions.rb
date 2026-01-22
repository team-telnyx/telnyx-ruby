# frozen_string_literal: true

module Telnyx
  module Resources
    class Organizations
      class Users
        class Actions
          # Deletes a user in your organization.
          #
          # @overload remove(id, request_options: {})
          #
          # @param id [String] Organization User ID
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Organizations::Users::ActionRemoveResponse]
          #
          # @see Telnyx::Models::Organizations::Users::ActionRemoveParams
          def remove(id, params = {})
            @client.request(
              method: :post,
              path: ["organizations/users/%1$s/actions/remove", id],
              model: Telnyx::Models::Organizations::Users::ActionRemoveResponse,
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
