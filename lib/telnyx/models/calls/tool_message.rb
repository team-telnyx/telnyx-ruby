# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class ToolMessage < Telnyx::Internal::Type::BaseModel
        # @!attribute content
        #   The contents of the tool message.
        #
        #   @return [String]
        required :content, String

        # @!attribute role
        #   The role of the messages author, in this case `tool`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ToolMessage::Role]
        required :role, enum: -> { Telnyx::Calls::ToolMessage::Role }

        # @!attribute tool_call_id
        #   Tool call that this message is responding to.
        #
        #   @return [String]
        required :tool_call_id, String

        # @!attribute metadata
        #   Metadata to add to the message
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!method initialize(content:, role:, tool_call_id:, metadata: nil)
        #   @param content [String] The contents of the tool message.
        #
        #   @param role [Symbol, Telnyx::Models::Calls::ToolMessage::Role] The role of the messages author, in this case `tool`.
        #
        #   @param tool_call_id [String] Tool call that this message is responding to.
        #
        #   @param metadata [Hash{Symbol=>Object}] Metadata to add to the message

        # The role of the messages author, in this case `tool`.
        #
        # @see Telnyx::Models::Calls::ToolMessage#role
        module Role
          extend Telnyx::Internal::Type::Enum

          TOOL = :tool

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
