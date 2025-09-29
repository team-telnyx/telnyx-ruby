# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Transcriptions
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
              # The id of the account the resource belongs to.
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
                Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse
              )
            end
            def retrieve_recording_transcription_sid_json(
              # Uniquely identifies the recording transcription by id.
              recording_transcription_sid,
              # The id of the account the resource belongs to.
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
