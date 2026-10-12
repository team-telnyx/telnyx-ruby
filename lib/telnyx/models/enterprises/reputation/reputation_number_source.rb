# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
        # `external`: a number you own that is hosted with another provider.
        module ReputationNumberSource
          extend Telnyx::Internal::Type::Enum

          TELNYX = :telnyx
          EXTERNAL = :external

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      ReputationNumberSource = Reputation::ReputationNumberSource
    end
  end
end
