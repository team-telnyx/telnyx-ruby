# frozen_string_literal: true

module Telnyx
  module Models
    module BrowserSessions
      class PressAction < Telnyx::Internal::Type::BaseModel
        # @!attribute key
        #
        #   @return [Symbol, Telnyx::Models::BrowserSessions::PressAction::Key]
        required :key, enum: -> { Telnyx::BrowserSessions::PressAction::Key }

        # @!attribute type
        #
        #   @return [Symbol, :press]
        required :type, const: :press

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!attribute include_observation
        #
        #   @return [Boolean, nil]
        optional :include_observation, Telnyx::Internal::Type::Boolean

        # @!method initialize(key:, idempotency_key: nil, include_observation: nil, type: :press)
        #   Press a keyboard key.
        #
        #   @param key [Symbol, Telnyx::Models::BrowserSessions::PressAction::Key]
        #   @param idempotency_key [String]
        #   @param include_observation [Boolean]
        #   @param type [Symbol, :press]

        # @see Telnyx::Models::BrowserSessions::PressAction#key
        module Key
          extend Telnyx::Internal::Type::Enum

          ENTER = :Enter
          TAB = :Tab
          ESCAPE = :Escape
          BACKSPACE = :Backspace
          ARROW_UP = :ArrowUp
          ARROW_DOWN = :ArrowDown
          ARROW_LEFT = :ArrowLeft
          ARROW_RIGHT = :ArrowRight
          PAGE_UP = :PageUp
          PAGE_DOWN = :PageDown
          HOME = :Home
          END_ = :End

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
