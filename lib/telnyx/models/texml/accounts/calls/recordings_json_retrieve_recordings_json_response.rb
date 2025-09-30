# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson#retrieve_recordings_json
          class RecordingsJsonRetrieveRecordingsJsonResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute end_
            #   The number of the last element on the page, zero-indexed.
            #
            #   @return [Integer, nil]
            optional :end_, Integer, api_name: :end

            # @!attribute first_page_uri
            #   Relative uri to the first page of the query results
            #
            #   @return [String, nil]
            optional :first_page_uri, String

            # @!attribute next_page_uri
            #   Relative uri to the next page of the query results
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

            # @!attribute previous_page_uri
            #   Relative uri to the previous page of the query results
            #
            #   @return [String, nil]
            optional :previous_page_uri, String

            # @!attribute recordings
            #
            #   @return [Array<Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody>, nil]
            optional :recordings,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Texml::TexmlGetCallRecordingResponseBody] }

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

            # @!method initialize(end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, previous_page_uri: nil, recordings: nil, start: nil, uri: nil)
            #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
            #
            #   @param first_page_uri [String] Relative uri to the first page of the query results
            #
            #   @param next_page_uri [String] Relative uri to the next page of the query results
            #
            #   @param page [Integer] Current page number, zero-indexed.
            #
            #   @param page_size [Integer] The number of items on the page
            #
            #   @param previous_page_uri [String] Relative uri to the previous page of the query results
            #
            #   @param recordings [Array<Telnyx::Models::Texml::TexmlGetCallRecordingResponseBody>]
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
