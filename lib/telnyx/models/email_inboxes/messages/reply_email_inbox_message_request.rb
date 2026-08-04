# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class ReplyEmailInboxMessageRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute html
          #   HTML reply body.
          #
          #   @return [String, nil]
          optional :html, String

          # @!attribute text
          #   Plain-text reply body.
          #
          #   @return [String, nil]
          optional :text, String

          # @!method initialize(html: nil, text: nil)
          #   At least one of `text` or `html` must contain a non-whitespace body. Recipients
          #   are derived from the source message; caller-supplied `to`, `cc`, or `bcc` values
          #   are ignored.
          #
          #   @param html [String] HTML reply body.
          #
          #   @param text [String] Plain-text reply body.
        end
      end
    end
  end
end
