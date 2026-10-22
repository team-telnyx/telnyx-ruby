# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          # TeXML REST Commands
          class Streams
            # Updates streaming resource for particular call.
            sig do
              params(
                streaming_sid: String,
                account_sid: String,
                call_sid: String,
                status:
                  Telnyx::Texml::Accounts::Calls::StreamStreamingSidJsonParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Calls::StreamStreamingSidJsonResponse
              )
            end
            def streaming_sid_json(
              # Path param: Uniquely identifies the streaming by id.
              streaming_sid,
              # Path param: The UUID of the Telnyx account that owns the resource, for example
              # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
              # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
              # Twilio `AC...` SID. It must match the account that owns the API key used to
              # authenticate the request, otherwise the endpoint returns `404`. The same value
              # is sent as `AccountSid` in TeXML webhooks.
              account_sid:,
              # Path param: The CallSid that identifies the call to update.
              call_sid:,
              # Body param: The status of the Stream you wish to update.
              status: nil,
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
end
