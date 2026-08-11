# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class AgentEmailContact < Telnyx::Internal::Type::BaseModel
        # @!attribute address
        #
        #   @return [String]
        required :address, String

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!method initialize(address:, label:)
        #   @param address [String]
        #   @param label [String]
      end
    end
  end
end
