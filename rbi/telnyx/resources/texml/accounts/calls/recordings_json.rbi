# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          class RecordingsJson
            # Starts recording with specified parameters for call idientified by call_sid.
            sig do
              params(
                call_sid: String,
                account_sid: String,
                play_beep: T::Boolean,
                recording_channels:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels::OrSymbol,
                recording_status_callback: String,
                recording_status_callback_event: String,
                recording_status_callback_method:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod::OrSymbol,
                recording_track:
                  Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack::OrSymbol,
                send_recording_url: T::Boolean,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse
              )
            end
            def recordings_json(
              # Path param: The CallSid that identifies the call to update.
              call_sid,
              # Path param: The id of the account the resource belongs to.
              account_sid:,
              # Body param: Whether to play a beep when recording is started.
              play_beep: nil,
              # Body param: When `dual`, final audio file has the first leg on channel A, and
              # the rest on channel B. `single` mixes both tracks into a single channel.
              recording_channels: nil,
              # Body param: Url where status callbacks will be sent.
              recording_status_callback: nil,
              # Body param: The changes to the recording's state that should generate a call to
              # `RecoridngStatusCallback`. Can be: `in-progress`, `completed` and `absent`.
              # Separate multiple values with a space. Defaults to `completed`.
              recording_status_callback_event: nil,
              # Body param: HTTP method used to send status callbacks.
              recording_status_callback_method: nil,
              # Body param: The audio track to record for the call. The default is `both`.
              recording_track: nil,
              # Body param: Whether to send RecordingUrl in webhooks.
              send_recording_url: nil,
              request_options: {}
            )
            end

            # Returns recordings for a call identified by call_sid.
            sig do
              params(
                call_sid: String,
                account_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRetrieveRecordingsJsonResponse
              )
            end
            def retrieve_recordings_json(
              # The CallSid that identifies the call to update.
              call_sid,
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
