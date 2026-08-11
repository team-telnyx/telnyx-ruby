# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module AgentSubmissionStatus
        extend Telnyx::Internal::Type::Enum

        SUBMITTED = :SUBMITTED
        APPROVED = :APPROVED
        REJECTED = :REJECTED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
