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
        #   Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096
        #   UTF-8 bytes and nonblank; control characters other than tab and line breaks are
        #   rejected. CRLF is normalized to LF.
        #
        #   @return [String]
        required :text, String

        # @!method initialize(id:, text:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessions::ActionSendChatParams} for more details.
        #
        #   @param id [String]
        #
        #   @param text [String] Message text, 1–4000 characters. On Google Meet and Teams, also at most 4096 UTF
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
