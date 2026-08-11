# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module AgentUseCase
        extend Telnyx::Internal::Type::Enum

        MULTI_USE = :MULTI_USE
        PROMOTIONAL = :PROMOTIONAL
        TRANSACTIONAL = :TRANSACTIONAL
        OTP = :OTP

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
