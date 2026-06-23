# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # Authentication method used when connecting to the external LLM endpoint.
      module AuthenticationMethod
        extend Telnyx::Internal::Type::Enum

        TOKEN = :token
        CERTIFICATE = :certificate

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
