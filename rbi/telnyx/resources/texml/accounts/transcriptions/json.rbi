# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Transcriptions
          # TeXML REST Commands
          class Json
            # Permanently deletes a recording transcription.
            sig do
              params(
                recording_transcription_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete_recording_transcription_sid_json(
              # Uniquely identifies the recording transcription by id.
              recording_transcription_sid,
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

            # Returns the recording transcription resource identified by its ID.
            sig do
              params(
                recording_transcription_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Texml::Accounts::Transcriptions::TexmlRecordingTranscription
              )
            end
            def retrieve_recording_transcription_sid_json(
              # Uniquely identifies the recording transcription by id.
              recording_transcription_sid,
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
