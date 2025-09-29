# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Conferences
          # @return [Telnyx::Resources::Texml::Accounts::Conferences::Participants]
          attr_reader :participants

          # Returns a conference resource.
          #
          # @overload retrieve(conference_sid, account_sid:, request_options: {})
          #
          # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveParams
          def retrieve(conference_sid, params)
            parsed, options = Telnyx::Texml::Accounts::ConferenceRetrieveParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Conferences/%2$s", account_sid, conference_sid],
              model: Telnyx::Models::Texml::Accounts::ConferenceRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::ConferenceUpdateParams} for more details.
          #
          # Updates a conference resource.
          #
          # @overload update(conference_sid, account_sid:, announce_method: nil, announce_url: nil, status: nil, request_options: {})
          #
          # @param conference_sid [String] Path param: The ConferenceSid that uniquely identifies a conference.
          #
          # @param account_sid [String] Path param: The id of the account the resource belongs to.
          #
          # @param announce_method [Symbol, Telnyx::Models::Texml::Accounts::ConferenceUpdateParams::AnnounceMethod] Body param: The HTTP method used to call the `AnnounceUrl`. Defaults to `POST`.
          #
          # @param announce_url [String] Body param: The URL we should call to announce something into the conference. Th
          #
          # @param status [String] Body param: The new status of the resource. Specifying `completed` will end the
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::ConferenceUpdateParams
          def update(conference_sid, params)
            parsed, options = Telnyx::Texml::Accounts::ConferenceUpdateParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Conferences/%2$s", account_sid, conference_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::ConferenceUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesParams} for more
          # details.
          #
          # Lists conference resources.
          #
          # @overload retrieve_conferences(account_sid, date_created: nil, date_updated: nil, friendly_name: nil, page: nil, page_size: nil, page_token: nil, status: nil, request_options: {})
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param date_created [String] Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also ac
          #
          # @param date_updated [String] Filters conferences by the time they were last updated. Expected format is YYYY-
          #
          # @param friendly_name [String] Filters conferences by their friendly name.
          #
          # @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
          #
          # @param page_size [Integer] The number of records to be displayed on a page
          #
          # @param page_token [String] Used to request the next page of results.
          #
          # @param status [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesParams::Status] Filters conferences by status.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesParams
          def retrieve_conferences(account_sid, params = {})
            parsed, options = Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Conferences", account_sid],
              query: parsed.transform_keys(
                date_created: "DateCreated",
                date_updated: "DateUpdated",
                friendly_name: "FriendlyName",
                page: "Page",
                page_size: "PageSize",
                page_token: "PageToken",
                status: "Status"
              ),
              model: Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse,
              options: options
            )
          end

          # Lists conference recordings
          #
          # @overload retrieve_recordings(conference_sid, account_sid:, request_options: {})
          #
          # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsParams
          def retrieve_recordings(conference_sid, params)
            parsed, options = Telnyx::Texml::Accounts::ConferenceRetrieveRecordingsParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Conferences/%2$s/Recordings", account_sid, conference_sid],
              model: Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsResponse,
              options: options
            )
          end

          # Returns recordings for a conference identified by conference_sid.
          #
          # @overload retrieve_recordings_json(conference_sid, account_sid:, request_options: {})
          #
          # @param conference_sid [String] The ConferenceSid that uniquely identifies a conference.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsJsonResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsJsonParams
          def retrieve_recordings_json(conference_sid, params)
            parsed, options = Telnyx::Texml::Accounts::ConferenceRetrieveRecordingsJsonParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Conferences/%2$s/Recordings.json", account_sid, conference_sid],
              model: Telnyx::Models::Texml::Accounts::ConferenceRetrieveRecordingsJsonResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @participants = Telnyx::Resources::Texml::Accounts::Conferences::Participants.new(client: client)
          end
        end
      end
    end
  end
end
