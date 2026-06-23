# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#retrieve_participants
          class ParticipantRetrieveParticipantsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute end_
            #   The number of the last element on the page, zero-indexed.
            #
            #   @return [Integer, nil]
            optional :end_, Integer, api_name: :end

            # @!attribute first_page_uri
            #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?page=0&pagesize=20
            #
            #   @return [String, nil]
            optional :first_page_uri, String

            # @!attribute next_page_uri
            #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba1-4351-86b8-4c22c95cd98f/Participants.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
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

            # @!attribute participants
            #
            #   @return [Array<Telnyx::Models::Texml::Accounts::Conferences::ParticipantResource>, nil]
            optional :participants,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::Accounts::Conferences::ParticipantResource] }

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

            # @!method initialize(end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, participants: nil, start: nil, uri: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Conferences::ParticipantRetrieveParticipantsResponse}
            #   for more details.
            #
            #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
            #
            #   @param first_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba
            #
            #   @param next_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Conferences/6dc6cc1a-1ba
            #
            #   @param page [Integer] Current page number, zero-indexed.
            #
            #   @param page_size [Integer] The number of items on the page
            #
            #   @param participants [Array<Telnyx::Models::Texml::Accounts::Conferences::ParticipantResource>]
            #
            #   @param start [Integer] The number of the first element on the page, zero-indexed.
            #
            #   @param uri [String] The URI of the current page.
          end
        end
      end
    end
  end
end
