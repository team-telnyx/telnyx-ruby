# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class CallControlCommandResult < Telnyx::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [String, nil]
        optional :result, String

        # @!method initialize(result: nil)
        #   @param result [String]
      end
    end

    CallControlCommandResult = Calls::CallControlCommandResult
  end
end
