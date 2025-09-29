# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Conversations#create
      class Conversation < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The datetime the conversation was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute last_message_at
        #   The datetime of the latest message in the conversation.
        #
        #   @return [Time]
        required :last_message_at, Time

        # @!attribute metadata
        #   Metadata associated with the conversation. Telnyx provides several pieces of
        #   metadata, but customers can also add their own.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Telnyx::Internal::Type::HashOf[String]

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id:, created_at:, last_message_at:, metadata:, name: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::Conversation} for more details.
        #
        #   @param id [String]
        #
        #   @param created_at [Time] The datetime the conversation was created.
        #
        #   @param last_message_at [Time] The datetime of the latest message in the conversation.
        #
        #   @param metadata [Hash{Symbol=>String}] Metadata associated with the conversation. Telnyx provides several pieces of met
        #
        #   @param name [String]
      end
    end
  end
end
