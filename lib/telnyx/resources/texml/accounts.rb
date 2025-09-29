# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        # @return [Telnyx::Resources::Texml::Accounts::Calls]
        attr_reader :calls

        # @return [Telnyx::Resources::Texml::Accounts::Conferences]
        attr_reader :conferences

        # @return [Telnyx::Resources::Texml::Accounts::Recordings]
        attr_reader :recordings

        # @return [Telnyx::Resources::Texml::Accounts::Transcriptions]
        attr_reader :transcriptions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Texml::AccountRetrieveRecordingsJsonParams} for more details.
        #
        # Returns multiple recording resources for an account.
        #
        # @overload retrieve_recordings_json(account_sid, date_created: nil, page: nil, page_size: nil, request_options: {})
        #
        # @param account_sid [String] The id of the account the resource belongs to.
        #
        # @param date_created [Time] Filters recording by the creation date. Expected format is ISO8601 date or date-
        #
        # @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
        #
        # @param page_size [Integer] The number of records to be displayed on a page
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Texml::AccountRetrieveRecordingsJsonResponse]
        #
        # @see Telnyx::Models::Texml::AccountRetrieveRecordingsJsonParams
        def retrieve_recordings_json(account_sid, params = {})
          parsed, options = Telnyx::Texml::AccountRetrieveRecordingsJsonParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["texml/Accounts/%1$s/Recordings.json", account_sid],
            query: parsed.transform_keys(date_created: "DateCreated", page: "Page", page_size: "PageSize"),
            model: Telnyx::Models::Texml::AccountRetrieveRecordingsJsonResponse,
            options: options
          )
        end

        # Returns multiple recording transcription resources for an account.
        #
        # @overload retrieve_transcriptions_json(account_sid, page_size: nil, page_token: nil, request_options: {})
        #
        # @param account_sid [String] The id of the account the resource belongs to.
        #
        # @param page_size [Integer] The number of records to be displayed on a page
        #
        # @param page_token [String] Used to request the next page of results.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse]
        #
        # @see Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonParams
        def retrieve_transcriptions_json(account_sid, params = {})
          parsed, options = Telnyx::Texml::AccountRetrieveTranscriptionsJsonParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["texml/Accounts/%1$s/Transcriptions.json", account_sid],
            query: parsed.transform_keys(page_size: "PageSize", page_token: "PageToken"),
            model: Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @calls = Telnyx::Resources::Texml::Accounts::Calls.new(client: client)
          @conferences = Telnyx::Resources::Texml::Accounts::Conferences.new(client: client)
          @recordings = Telnyx::Resources::Texml::Accounts::Recordings.new(client: client)
          @transcriptions = Telnyx::Resources::Texml::Accounts::Transcriptions.new(client: client)
        end
      end
    end
  end
end
