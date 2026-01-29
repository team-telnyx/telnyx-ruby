# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Queues#list
        class QueueListResponse < Telnyx::Internal::Type::BaseModel
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
