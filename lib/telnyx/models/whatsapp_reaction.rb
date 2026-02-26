# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappReaction < Telnyx::Internal::Type::BaseModel
      # @!attribute emoji
      #
      #   @return [String, nil]
      optional :emoji, String

      # @!attribute message_id
      #
      #   @return [String, nil]
      optional :message_id, String

      # @!method initialize(emoji: nil, message_id: nil)
      #   @param emoji [String]
      #   @param message_id [String]
    end
  end
end
