# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Recordings
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
              # The id of the account the resource belongs to.
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
