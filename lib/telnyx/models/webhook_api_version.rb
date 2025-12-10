# frozen_string_literal: true

module Telnyx
  module Models
    # Determines which webhook format will be used, Telnyx API v1 or v2.
    module WebhookAPIVersion
      extend Telnyx::Internal::Type::Enum

      V1 = :"1"
      V2 = :"2"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
