# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class InterruptionSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute enable
        #   When true, allows users to interrupt the assistant while speaking
        #
        #   @return [Boolean, nil]
        optional :enable, Telnyx::Internal::Type::Boolean

        # @!method initialize(enable: nil)
        #   Settings for handling user interruptions during assistant speech
        #
        #   @param enable [Boolean] When true, allows users to interrupt the assistant while speaking
      end
    end
  end
end
