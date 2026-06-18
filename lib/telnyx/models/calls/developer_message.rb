# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class DeveloperMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute content
        #   The contents of the developer message.
        #
        #   @return [String]
        required :content, String

        # @!attribute role
        #   The role of the messages author, in this case developer.
        #
        #   @return [Symbol, Telnyx::Models::Calls::DeveloperMessage::Role]
        required :role, enum: -> { Telnyx::Calls::DeveloperMessage::Role }

        # @!attribute metadata
        #   Metadata to add to the message
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(content:, role:, metadata: nil)
        #   Developer-provided instructions that the model should follow, regardless of
        #   messages sent by the user.
        #
        #   @param content [String] The contents of the developer message.
        #
        #   @param role [Symbol, Telnyx::Models::Calls::DeveloperMessage::Role] The role of the messages author, in this case developer.
        #
        #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message

        # The role of the messages author, in this case developer.
        #
        # @see Telnyx::Models::Calls::DeveloperMessage#role
        module Role
          extend Telnyx::Internal::Type::Enum

          DEVELOPER = :developer

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
