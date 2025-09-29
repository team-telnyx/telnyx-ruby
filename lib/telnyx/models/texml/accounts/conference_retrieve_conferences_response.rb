# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Conferences#retrieve_conferences
        class ConferenceRetrieveConferencesResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute conferences
          #
          #   @return [Array<Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference>, nil]
          optional :conferences,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference] }

          # @!attribute end_
          #   The number of the last element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :end_, Integer, api_name: :end

          # @!attribute first_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences.json?Page=0&PageSize=1
          #
          #   @return [String, nil]
          optional :first_page_uri, String

          # @!attribute next_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          #
          #   @return [String, nil]
          optional :next_page_uri, String

          # @!attribute page
          #   Current page number, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :page, Integer

          # @!attribute page_size
          #   The number of items on the page
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute start
          #   The number of the first element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :start, Integer

          # @!attribute uri
          #   The URI of the current page.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(conferences: nil, end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, start: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse} for
          #   more details.
          #
          #   @param conferences [Array<Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference>]
          #
          #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
          #
          #   @param first_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences.json?Page=0&
          #
          #   @param next_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences.json?Page=1&
          #
          #   @param page [Integer] Current page number, zero-indexed.
          #
          #   @param page_size [Integer] The number of items on the page
          #
          #   @param start [Integer] The number of the first element on the page, zero-indexed.
          #
          #   @param uri [String] The URI of the current page.

          class Conference < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute api_version
            #   The version of the API that was used to make the request.
            #
            #   @return [String, nil]
            optional :api_version, String

            # @!attribute call_sid_ending_conference
            #   Caller ID, if present.
            #
            #   @return [String, nil]
            optional :call_sid_ending_conference, String

            # @!attribute date_created
            #   The timestamp of when the resource was created.
            #
            #   @return [String, nil]
            optional :date_created, String

            # @!attribute date_updated
            #   The timestamp of when the resource was last updated.
            #
            #   @return [String, nil]
            optional :date_updated, String

            # @!attribute friendly_name
            #   A string that you assigned to describe this conference room.
            #
            #   @return [String, nil]
            optional :friendly_name, String

            # @!attribute reason_conference_ended
            #   The reason why a conference ended. When a conference is in progress, will be
            #   null.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::ReasonConferenceEnded, nil]
            optional :reason_conference_ended,
                     enum: -> { Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::ReasonConferenceEnded }

            # @!attribute region
            #   A string representing the region where the conference is hosted.
            #
            #   @return [String, nil]
            optional :region, String

            # @!attribute sid
            #   The unique identifier of the conference.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute status
            #   The status of this conference.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::Status }

            # @!attribute subresource_uris
            #   A list of related resources identified by their relative URIs.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :subresource_uris, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute uri
            #   The relative URI for this conference.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, api_version: nil, call_sid_ending_conference: nil, date_created: nil, date_updated: nil, friendly_name: nil, reason_conference_ended: nil, region: nil, sid: nil, status: nil, subresource_uris: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference}
            #   for more details.
            #
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param api_version [String] The version of the API that was used to make the request.
            #
            #   @param call_sid_ending_conference [String] Caller ID, if present.
            #
            #   @param date_created [String] The timestamp of when the resource was created.
            #
            #   @param date_updated [String] The timestamp of when the resource was last updated.
            #
            #   @param friendly_name [String] A string that you assigned to describe this conference room.
            #
            #   @param reason_conference_ended [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::ReasonConferenceEnded] The reason why a conference ended. When a conference is in progress, will be nul
            #
            #   @param region [String] A string representing the region where the conference is hosted.
            #
            #   @param sid [String] The unique identifier of the conference.
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference::Status] The status of this conference.
            #
            #   @param subresource_uris [Hash{Symbol=>Object}] A list of related resources identified by their relative URIs.
            #
            #   @param uri [String] The relative URI for this conference.

            # The reason why a conference ended. When a conference is in progress, will be
            # null.
            #
            # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference#reason_conference_ended
            module ReasonConferenceEnded
              extend Telnyx::Internal::Type::Enum

              PARTICIPANT_WITH_END_CONFERENCE_ON_EXIT_LEFT = :"participant-with-end-conference-on-exit-left"
              LAST_PARTICIPANT_LEFT = :"last-participant-left"
              CONFERENCE_ENDED_VIA_API = :"conference-ended-via-api"
              TIME_EXCEEDED = :"time-exceeded"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of this conference.
            #
            # @see Telnyx::Models::Texml::Accounts::ConferenceRetrieveConferencesResponse::Conference#status
            module Status
              extend Telnyx::Internal::Type::Enum

              INIT = :init
              IN_PROGRESS = :"in-progress"
              COMPLETED = :completed

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
