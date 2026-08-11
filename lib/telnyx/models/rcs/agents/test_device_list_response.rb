# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module Agents
        # @type [Telnyx::Internal::Type::Converter]
        TestDeviceListResponse = Telnyx::Internal::Type::ArrayOf[-> {
          Telnyx::Rcs::Agents::TestDeviceResponse
        }]
      end
    end
  end
end
