# frozen_string_literal: true

module Telnyx
  module Resources
    class Messages
      class Rcs
        # Generate a deeplink URL that can be used to start an RCS conversation with a
        # specific agent.
        #
        # @overload generate_deeplink(agent_id, body: nil, phone_number: nil, request_options: {})
        #
        # @param agent_id [String] RCS agent ID
        #
        # @param body [String] Pre-filled message body (URL encoded)
        #
        # @param phone_number [String] Phone number in E164 format (URL encoded)
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Messages::RcGenerateDeeplinkResponse]
        #
        # @see Telnyx::Models::Messages::RcGenerateDeeplinkParams
        def generate_deeplink(agent_id, params = {})
          parsed, options = Telnyx::Messages::RcGenerateDeeplinkParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["messages/rcs/deeplinks/%1$s", agent_id],
            query: parsed,
            model: Telnyx::Models::Messages::RcGenerateDeeplinkResponse,
            options: options
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
