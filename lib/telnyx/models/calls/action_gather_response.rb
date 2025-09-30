# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#gather
      class ActionGatherResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Calls::CallControlCommandResult, nil]
        optional :data, -> { Telnyx::Calls::CallControlCommandResult }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Calls::CallControlCommandResult]
      end
    end
  end
end
