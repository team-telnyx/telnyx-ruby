# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#mark_as_read
    class CommentMarkAsReadResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CommentMarkAsReadResponse::Data, nil]
      optional :data, -> { Telnyx::Models::CommentMarkAsReadResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CommentMarkAsReadResponse::Data]

      # @see Telnyx::Models::CommentMarkAsReadResponse#data
      class Data < Telnyx::Models::Comment
        # @!method initialize
      end
    end
  end
end
