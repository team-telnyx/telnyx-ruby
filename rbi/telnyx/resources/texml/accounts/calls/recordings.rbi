# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          class Recordings
            # Updates recording resource for particular call.
            sig do
              params(
                recording_sid: String,
                account_sid: String,
                call_sid: String,
                status:
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse
              )
            end
            def recording_sid_json(
              # Path param: Uniquely identifies the recording by id.
              recording_sid,
              # Path param: The id of the account the resource belongs to.
              account_sid:,
              # Path param: The CallSid that identifies the call to update.
              call_sid:,
              # Body param:
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
