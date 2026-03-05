# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messages#retrieve_group_messages
    class MessageRetrieveGroupMessagesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute message_id
      #
      #   @return [String]
      required :message_id, String

      # @!method initialize(message_id:, request_options: {})
      #   @param message_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
