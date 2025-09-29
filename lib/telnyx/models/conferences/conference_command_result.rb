# frozen_string_literal: true

module Telnyx
  module Models
    module Conferences
      class ConferenceCommandResult < Telnyx::Internal::Type::BaseModel
        # @!attribute result
        #
        #   @return [String]
        required :result, String

        # @!method initialize(result:)
        #   @param result [String]
      end
    end

    ConferenceCommandResult = Conferences::ConferenceCommandResult
  end
end
