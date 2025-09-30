# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
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
              # Path param: The id of the account the resource belongs to.
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
