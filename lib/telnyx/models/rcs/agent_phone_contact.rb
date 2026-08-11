# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentPhoneContact < Telnyx::Internal::Type::BaseModel
        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute number
        #
        #   @return [String]
        required :number, String

        # @!method initialize(label:, number:)
        #   @param label [String]
        #   @param number [String]
      end
    end
  end
end
