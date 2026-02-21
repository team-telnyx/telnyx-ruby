# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingProfiles
      class Actions
        # Regenerate the v1 secret for a messaging profile.
        #
        # @overload regenerate_secret(id, request_options: {})
        #
        # @param id [String] The identifier of the messaging profile.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::MessagingProfiles::ActionRegenerateSecretResponse]
        #
        # @see Telnyx::Models::MessagingProfiles::ActionRegenerateSecretParams
        def regenerate_secret(id, params = {})
          @client.request(
            method: :post,
            path: ["messaging_profiles/%1$s/actions/regenerate_secret", id],
            model: Telnyx::Models::MessagingProfiles::ActionRegenerateSecretResponse,
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
