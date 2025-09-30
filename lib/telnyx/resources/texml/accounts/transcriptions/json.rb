# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Transcriptions
          class Json
            # Permanently deletes a recording transcription.
            #
            # @overload delete_recording_transcription_sid_json(recording_transcription_sid, account_sid:, request_options: {})
            #
            # @param recording_transcription_sid [String] Uniquely identifies the recording transcription by id.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see Telnyx::Models::Texml::Accounts::Transcriptions::JsonDeleteRecordingTranscriptionSidJsonParams
            def delete_recording_transcription_sid_json(recording_transcription_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Transcriptions::JsonDeleteRecordingTranscriptionSidJsonParams.dump_request(
                  params
                )
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: [
                  "texml/Accounts/%1$s/Transcriptions/%2$s.json",
                  account_sid,
                  recording_transcription_sid
                ],
                model: NilClass,
                options: options
              )
            end

            # Returns the recording transcription resource identified by its ID.
            #
            # @overload retrieve_recording_transcription_sid_json(recording_transcription_sid, account_sid:, request_options: {})
            #
            # @param recording_transcription_sid [String] Uniquely identifies the recording transcription by id.
            #
            # @param account_sid [String] The id of the account the resource belongs to.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse]
            #
            # @see Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonParams
            def retrieve_recording_transcription_sid_json(recording_transcription_sid, params)
              parsed, options =
                Telnyx::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonParams.dump_request(
                  params
                )
              account_sid =
                parsed.delete(:account_sid) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: [
                  "texml/Accounts/%1$s/Transcriptions/%2$s.json",
                  account_sid,
                  recording_transcription_sid
                ],
                model: Telnyx::Models::Texml::Accounts::Transcriptions::JsonRetrieveRecordingTranscriptionSidJsonResponse,
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
