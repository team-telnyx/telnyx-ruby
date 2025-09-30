# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      module Loopcount
        extend Telnyx::Internal::Type::Union

        variant String

        variant Integer

        # @!method self.variants
        #   @return [Array(String, Integer)]
      end
    end
  end
end
