# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Queues#list
    class QueueListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the queue
      #
      #   @return [String]
      required :id, String

      # @!attribute average_wait_time_secs
      #   The average time that the calls currently in the queue have spent waiting, given
      #   in seconds.
      #
      #   @return [Integer]
      required :average_wait_time_secs, Integer

      # @!attribute created_at
      #   ISO 8601 formatted date of when the queue was created
      #
      #   @return [String]
      required :created_at, String

      # @!attribute current_size
      #   The number of calls currently in the queue
      #
      #   @return [Integer]
      required :current_size, Integer

      # @!attribute max_size
      #   The maximum number of calls allowed in the queue
      #
      #   @return [Integer]
      required :max_size, Integer

      # @!attribute name
      #   Name of the queue
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::QueueListResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::QueueListResponse::RecordType }

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the queue was last updated
      #
      #   @return [String]
      required :updated_at, String

      # @!method initialize(id:, average_wait_time_secs:, created_at:, current_size:, max_size:, name:, record_type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::QueueListResponse} for more details.
      #
      #   @param id [String] Uniquely identifies the queue
      #
      #   @param average_wait_time_secs [Integer] The average time that the calls currently in the queue have spent waiting, given
      #
      #   @param created_at [String] ISO 8601 formatted date of when the queue was created
      #
      #   @param current_size [Integer] The number of calls currently in the queue
      #
      #   @param max_size [Integer] The maximum number of calls allowed in the queue
      #
      #   @param name [String] Name of the queue
      #
      #   @param record_type [Symbol, Telnyx::Models::QueueListResponse::RecordType]
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the queue was last updated

      # @see Telnyx::Models::QueueListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        QUEUE = :queue

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
