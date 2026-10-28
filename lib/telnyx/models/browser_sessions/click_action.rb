# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class ClickAction < Telnyx::Internal::Type::BaseModel
        # @!attribute observation_id
        #
        #   @return [String]
        required :observation_id, String

        # @!attribute ref
        #
        #   @return [String]
        required :ref, String

        # @!attribute type
        #
        #   @return [Symbol, :click]
        required :type, const: :click

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!attribute timeout_ms
        #
        #   @return [Integer, nil]
        optional :timeout_ms, Integer

        # @!attribute wait
        #
        #   @return [Symbol, Telnyx::Models::BrowserSessions::ClickAction::Wait, nil]
        optional :wait, enum: -> { Telnyx::BrowserSessions::ClickAction::Wait }

        # @!method initialize(observation_id:, ref:, idempotency_key: nil, include_observation: nil, timeout_ms: nil, wait: nil, type: :click)
        #   Click an element identified by observation_id + ref.
        #
        #   @param observation_id [String]
        #   @param ref [String]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param timeout_ms [Integer]
        #   @param wait [Symbol, Telnyx::Models::BrowserSessions::ClickAction::Wait]
        #   @param type [Symbol, :click]

        # @see Telnyx::Models::BrowserSessions::ClickAction#wait
        module Wait
          extend Telnyx::Internal::Type::Enum

          NO_WAIT = :no_wait
          DOM_STABLE = :dom_stable
          URL_CHANGE = :url_change

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
