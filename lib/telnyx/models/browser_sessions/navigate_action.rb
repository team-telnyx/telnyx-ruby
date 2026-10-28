# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class NavigateAction < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, :navigate]
        required :type, const: :navigate

        # @!attribute url
        #
        #   @return [String]
        required :url, String

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!attribute wait_until
        #
        #   @return [Symbol, Telnyx::Models::BrowserSessions::NavigateAction::WaitUntil, nil]
        optional :wait_until, enum: -> { Telnyx::BrowserSessions::NavigateAction::WaitUntil }

        # @!method initialize(url:, idempotency_key: nil, include_observation: nil, wait_until: nil, type: :navigate)
        #   Navigate to a URL.
        #
        #   @param url [String]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param wait_until [Symbol, Telnyx::Models::BrowserSessions::NavigateAction::WaitUntil]
        #   @param type [Symbol, :navigate]

        # @see Telnyx::Models::BrowserSessions::NavigateAction#wait_until
        module WaitUntil
          extend Telnyx::Internal::Type::Enum

          LOAD = :load
          DOM_STABLE = :dom_stable
          NONE = :none

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
