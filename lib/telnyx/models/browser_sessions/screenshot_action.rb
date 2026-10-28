# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class ScreenshotAction < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, :screenshot]
        required :type, const: :screenshot

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!method initialize(idempotency_key: nil, include_observation: nil, type: :screenshot)
        #   Capture a screenshot of the current page.
        #
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param type [Symbol, :screenshot]
      end
    end
  end
end
