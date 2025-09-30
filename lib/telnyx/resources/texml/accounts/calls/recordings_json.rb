# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          class RecordingsJson
            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams} for
            # more details.
            #
            # Starts recording with specified parameters for call idientified by call_sid.
            #
            # @overload recordings_json(call_sid, account_sid:, play_beep: nil, recording_channels: nil, recording_status_callback: nil, recording_status_callback_event: nil, recording_status_callback_method: nil, recording_track: nil, send_recording_url: nil, request_options: {})
            #
            # @param call_sid [String] Path param: The CallSid that identifies the call to update.
            #
            # @param account_sid [String] Path param: The id of the account the resource belongs to.
            #
            # @param play_beep [Boolean] Body param: Whether to play a beep when recording is started.
            #
            # @param recording_channels [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingChannels] Body param: When `dual`, final audio file has the first leg on channel A, and th
            #
            # @param recording_status_callback [String] Body param: Url where status callbacks will be sent.
            #
            # @param recording_status_callback_event [String] Body param: The changes to the recording's state that should generate a call to
            #
            # @param recording_status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingStatusCallbackMethod] Body param: HTTP method used to send status callbacks.
            #
            # @param recording_track [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams::RecordingTrack] Body param: The audio track to record for the call. The default is `both`.
            #
            # @param send_recording_url [Boolean] Body param: Whether to send RecordingUrl in webhooks.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams
            def recordings_json(call_sid, params)
              parsed, options = Telnyx::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["texml/Accounts/%1$s/Calls/%2$s/Recordings.json", account_sid, call_sid],
                headers: {"content-type" => "application/x-www-form-urlencoded"},
                body: parsed,
                model: Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRecordingsJsonResponse,
                options: options
              )
            end

            # Returns recordings for a call identified by call_sid.
            #
            # @overload retrieve_recordings_json(call_sid, account_sid:, request_options: {})
            #
            # @param call_sid [String] The CallSid that identifies the call to update.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRetrieveRecordingsJsonResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRetrieveRecordingsJsonParams
            def retrieve_recordings_json(call_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Calls::RecordingsJsonRetrieveRecordingsJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["texml/Accounts/%1$s/Calls/%2$s/Recordings.json", account_sid, call_sid],
                model: Telnyx::Models::Texml::Accounts::Calls::RecordingsJsonRetrieveRecordingsJsonResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
