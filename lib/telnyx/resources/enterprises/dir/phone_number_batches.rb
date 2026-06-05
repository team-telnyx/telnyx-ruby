# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      class Dir
        class PhoneNumberBatches
          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
