# frozen_string_literal: true

module Telnyx
  module Models
    # Specifies the type of traffic allowed in this profile.
    module TrafficType
      extend Telnyx::Internal::Type::Enum

      CONVERSATIONAL = :conversational

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
