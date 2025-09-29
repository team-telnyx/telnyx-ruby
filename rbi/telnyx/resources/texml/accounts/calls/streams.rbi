# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
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
              # Path param: The id of the account the resource belongs to.
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
