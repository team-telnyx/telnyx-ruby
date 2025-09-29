# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class HangupToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute description
        #   The description of the function that will be passed to the assistant.
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(description: nil)
        #   @param description [String] The description of the function that will be passed to the assistant.
      end
    end
  end
end
