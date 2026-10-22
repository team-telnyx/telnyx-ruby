# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          # TeXML REST Commands
          class Siprec
            # Updates siprec session identified by siprec_sid.
            sig do
              params(
                siprec_sid: String,
                account_sid: String,
                call_sid: String,
                status:
                  Telnyx::Texml::Accounts::Calls::SiprecSiprecSidJsonParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse
              )
            end
            def siprec_sid_json(
              # Path param: The SiprecSid that uniquely identifies the Sip Recording.
              siprec_sid,
              # Path param: The UUID of the Telnyx account that owns the resource, for example
              # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
              # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
              # Twilio `AC...` SID. It must match the account that owns the API key used to
              # authenticate the request, otherwise the endpoint returns `404`. The same value
              # is sent as `AccountSid` in TeXML webhooks.
              account_sid:,
              # Path param: The CallSid that identifies the call to update.
              call_sid:,
              # Body param: The new status of the resource. Specifying `stopped` will end the
              # siprec session.
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
