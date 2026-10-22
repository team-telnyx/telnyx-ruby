# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Recordings
          # TeXML REST Commands
          class Json
            # Deletes recording resource identified by recording id.
            sig do
              params(
                recording_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete_recording_sid_json(
              # Uniquely identifies the recording by id.
              recording_sid,
              # The UUID of the Telnyx account that owns the resource, for example
              # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
              # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
              # Twilio `AC...` SID. It must match the account that owns the API key used to
              # authenticate the request, otherwise the endpoint returns `404`. The same value
              # is sent as `AccountSid` in TeXML webhooks.
              account_sid:,
              request_options: {}
            )
            end

            # Returns recording resource identified by recording id.
            sig do
              params(
                recording_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(Telnyx::Texml::TexmlGetCallRecordingResponseBody)
            end
            def retrieve_recording_sid_json(
              # Uniquely identifies the recording by id.
              recording_sid,
              # The UUID of the Telnyx account that owns the resource, for example
              # `f5586561-8ff0-4291-a51b-c7dfe4139ff9`. The `account_sid` path segment is kept
              # for Twilio API compatibility, but the value is a Telnyx account UUID, not a
              # Twilio `AC...` SID. It must match the account that owns the API key used to
              # authenticate the request, otherwise the endpoint returns `404`. The same value
              # is sent as `AccountSid` in TeXML webhooks.
              account_sid:,
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
