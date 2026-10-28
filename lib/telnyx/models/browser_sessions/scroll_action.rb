# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class ScrollAction < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, :scroll]
        required :type, const: :scroll

        # @!attribute delta_x
        #
        #   @return [Integer, nil]
        optional :delta_x, Integer

        # @!attribute delta_y
        #
        #   @return [Integer, nil]
        optional :delta_y, Integer

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!method initialize(delta_x: nil, delta_y: nil, idempotency_key: nil, include_observation: nil, type: :scroll)
        #   Scroll the page.
        #
        #   @param delta_x [Integer]
        #   @param delta_y [Integer]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param type [Symbol, :scroll]
      end
    end
  end
end
