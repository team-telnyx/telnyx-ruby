# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderUserFeedback < Telnyx::Internal::Type::BaseModel
      # @!attribute user_comment
      #   A comment related to the customer rating.
      #
      #   @return [String, nil]
      optional :user_comment, String

      # @!attribute user_rating
      #   Once an order is ported, cancellation is requested or the request is cancelled,
      #   the user may rate their experience
      #
      #   @return [Integer, nil]
      optional :user_rating, Integer

      # @!method initialize(user_comment: nil, user_rating: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderUserFeedback} for more details.
      #
      #   @param user_comment [String] A comment related to the customer rating.
      #
      #   @param user_rating [Integer] Once an order is ported, cancellation is requested or the request is cancelled,
    end
  end
end
