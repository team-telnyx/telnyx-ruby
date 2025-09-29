# typed: strong

module Telnyx
  module Resources
    class OperatorConnect
      class Actions
        # This endpoint will make an asynchronous request to refresh the Operator Connect
        # integration with Microsoft Teams for the current user. This will create new
        # external connections on the user's account if needed, and/or report the
        # integration results as
        # [log messages](https://developers.telnyx.com/api/external-voice-integrations/list-external-connection-log-messages).
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::OperatorConnect::ActionRefreshResponse
          )
        end
        def refresh(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
