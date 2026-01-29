# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Queues#list
        class QueueListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute end_
          #   The number of the last element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :end_, Integer, api_name: :end

          # @!attribute first_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=0&PageSize=1
          #
          #   @return [String, nil]
          optional :first_page_uri, String

          # @!attribute next_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
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

          # @!attribute queues
          #
          #   @return [Array<Telnyx::Models::Texml::Accounts::QueueListResponse::Queue>, nil]
          optional :queues,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::QueueListResponse::Queue] }

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

          # @!method initialize(end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, queues: nil, start: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::QueueListResponse} for more details.
          #
          #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
          #
          #   @param first_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=0&PageS
          #
          #   @param next_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=1&PageS
          #
          #   @param page [Integer] Current page number, zero-indexed.
          #
          #   @param page_size [Integer] The number of items on the page
          #
          #   @param queues [Array<Telnyx::Models::Texml::Accounts::QueueListResponse::Queue>]
          #
          #   @param start [Integer] The number of the first element on the page, zero-indexed.
          #
          #   @param uri [String] The URI of the current page.

          class Queue < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute average_wait_time
            #   The average wait time in seconds for members in the queue.
            #
            #   @return [Integer, nil]
            optional :average_wait_time, Integer

            # @!attribute current_size
            #   The current number of members in the queue.
            #
            #   @return [Integer, nil]
            optional :current_size, Integer

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

            # @!attribute max_size
            #   The maximum size of the queue.
            #
            #   @return [Integer, nil]
            optional :max_size, Integer

            # @!attribute sid
            #   The unique identifier of the queue.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute subresource_uris
            #   A list of related resources identified by their relative URIs.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :subresource_uris, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @!attribute uri
            #   The relative URI for this queue.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, average_wait_time: nil, current_size: nil, date_created: nil, date_updated: nil, max_size: nil, sid: nil, subresource_uris: nil, uri: nil)
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param average_wait_time [Integer] The average wait time in seconds for members in the queue.
            #
            #   @param current_size [Integer] The current number of members in the queue.
            #
            #   @param date_created [String] The timestamp of when the resource was created.
            #
            #   @param date_updated [String] The timestamp of when the resource was last updated.
            #
            #   @param max_size [Integer] The maximum size of the queue.
            #
            #   @param sid [String] The unique identifier of the queue.
            #
            #   @param subresource_uris [Hash{Symbol=>Object}] A list of related resources identified by their relative URIs.
            #
            #   @param uri [String] The relative URI for this queue.
          end
        end
      end
    end
  end
end
