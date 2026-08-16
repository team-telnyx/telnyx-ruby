# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Actions#send_chat
      class ActionSendChatParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute text
        #   Chat message text to send in the meeting.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(id:, text:, request_options: {})
        #   @param id [String]
        #
        #   @param text [String] Chat message text to send in the meeting.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
