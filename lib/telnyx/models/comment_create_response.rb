# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#create
    class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CommentCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::CommentCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CommentCreateResponse::Data]

      # @see Telnyx::Models::CommentCreateResponse#data
      class Data < Telnyx::Models::Comment
        # @!method initialize
      end
    end
  end
end
