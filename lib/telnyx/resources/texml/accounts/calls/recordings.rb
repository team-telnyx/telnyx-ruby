# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Calls
          class Recordings
            # Updates recording resource for particular call.
            #
            # @overload recording_sid_json(recording_sid, account_sid:, call_sid:, status: nil, request_options: {})
            #
            # @param recording_sid [String] Path param: Uniquely identifies the recording by id.
            #
            # @param account_sid [String] Path param: The id of the account the resource belongs to.
            #
            # @param call_sid [String] Path param: The CallSid that identifies the call to update.
            #
            # @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonParams
            def recording_sid_json(recording_sid, params)
              parsed, options = Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              call_sid =
                parsed.delete(:call_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "texml/Accounts/%1$s/Calls/%2$s/Recordings/%3$s.json",
                  account_sid,
                  call_sid,
                  recording_sid
                ],
                headers: {"content-type" => "application/x-www-form-urlencoded"},
                body: parsed,
                model: Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonResponse,
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
