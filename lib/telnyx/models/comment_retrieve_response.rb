# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Comments#retrieve
    class CommentRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CommentRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::CommentRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CommentRetrieveResponse::Data]

      # @see Telnyx::Models::CommentRetrieveResponse#data
      class Data < Telnyx::Models::Comment
        # @!method initialize
      end
    end
  end
end
