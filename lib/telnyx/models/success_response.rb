# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotSignup#create
    class SuccessResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute message
      #   Human-readable status message.
      #
      #   @return [String]
      required :message, String

      # @!attribute success
      #   Whether the request was accepted.
      #
      #   @return [Boolean]
      required :success, Telnyx::Internal::Type::Boolean

      # @!method initialize(message:, success:)
      #   Status envelope used by the signup and magic-link flows.
      #
      #   @param message [String] Human-readable status message.
      #
      #   @param success [Boolean] Whether the request was accepted.
    end
  end
end
