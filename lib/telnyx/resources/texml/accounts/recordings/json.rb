# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Recordings
          class Json
            # Deletes recording resource identified by recording id.
            #
            # @overload delete_recording_sid_json(recording_sid, account_sid:, request_options: {})
            #
            # @param recording_sid [String] Uniquely identifies the recording by id.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::Texml::Accounts::Recordings::JsonDeleteRecordingSidJsonParams
            def delete_recording_sid_json(recording_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Recordings::JsonDeleteRecordingSidJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: ["texml/Accounts/%1$s/Recordings/%2$s.json", account_sid, recording_sid],
                model: NilClass,
                options: options
              )
            end

            # Returns recording resource identified by recording id.
            #
            # @overload retrieve_recording_sid_json(recording_sid, account_sid:, request_options: {})
            #
            # @param recording_sid [String] Uniquely identifies the recording by id.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody]
            #
            # @see Telnyx::Models::Texml::Accounts::Recordings::JsonRetrieveRecordingSidJsonParams
            def retrieve_recording_sid_json(recording_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Recordings::JsonRetrieveRecordingSidJsonParams.dump_request(params)
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["texml/Accounts/%1$s/Recordings/%2$s.json", account_sid, recording_sid],
                model: Telnyx::Texml::TexmlGetCallRecordingResponseBody,
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
