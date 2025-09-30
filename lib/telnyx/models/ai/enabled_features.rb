# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # If `telephony` is enabled, the assistant will be able to make and receive calls.
      # If `messaging` is enabled, the assistant will be able to send and receive
      # messages.
      module EnabledFeatures
        extend Telnyx::Internal::Type::Enum

        TELEPHONY = :telephony
        MESSAGING = :messaging

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
