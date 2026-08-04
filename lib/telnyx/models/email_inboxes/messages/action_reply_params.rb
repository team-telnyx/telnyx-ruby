# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        # @see Telnyx::Resources::EmailInboxes::Messages::Actions#reply
        class ActionReplyParams < Telnyx::Models::EmailInboxes::Messages::ReplyEmailInboxMessageRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute inbox_id
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute message_id
          #
          #   @return [String]
          required :message_id, String

          # @!method initialize(inbox_id:, message_id:, request_options: {})
          #   @param inbox_id [String]
          #   @param message_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
