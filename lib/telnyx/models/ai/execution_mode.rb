# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module ExecutionMode
        extend Telnyx::Internal::Type::Enum

        EXTERNAL = :external
        MANAGED = :managed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
