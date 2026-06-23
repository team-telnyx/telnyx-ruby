# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class UserMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute content
        #   The contents of the user message.
        #
        #   @return [String]
        required :content, String

        # @!attribute role
        #   The role of the messages author, in this case `user`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::UserMessage::Role]
        required :role, enum: -> { Telnyx::Calls::UserMessage::Role }

        # @!attribute metadata
        #   Metadata to add to the message
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(content:, role:, metadata: nil)
        #   Messages sent by an end user
        #
        #   @param content [String] The contents of the user message.
        #
        #   @param role [Symbol, Telnyx::Models::Calls::UserMessage::Role] The role of the messages author, in this case `user`.
        #
        #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message

        # The role of the messages author, in this case `user`.
        #
        # @see Telnyx::Models::Calls::UserMessage#role
        module Role
          extend Telnyx::Internal::Type::Enum

          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
